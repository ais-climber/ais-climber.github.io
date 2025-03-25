from functools import lru_cache
import importlib.resources as pkg_resources

from pydub import AudioSegment
from pydub.playback import play
import romkan

from animalese.data.audio import english
from animalese.data.audio import japanese

ENGLISH = "english"
JAPANESE = "japanese"

DEFAULT_LENGTH = 75
SPACE_LENGTH = DEFAULT_LENGTH * 0.5
PUNC_LENGTH = DEFAULT_LENGTH * 1.5

HIRAGANA = "ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんゔゕゖ゙゚゛゜ゝゞゟ"

SPECIAL_CHARACTERS = {
    "missingno": {"duration": DEFAULT_LENGTH},
    " ": {"duration": SPACE_LENGTH},
    ".": {"duration": PUNC_LENGTH},
    "!": {"duration": PUNC_LENGTH, "word_volume": 125},
    "?": {"duration": PUNC_LENGTH, "word_pitch": 125}
}


class SpeechCharacter:
    def __init__(self, c, sound, offset = DEFAULT_LENGTH, **kwargs):
        self.c = c
        self.sound = sound
        self.offset = offset

    def __len__(self):
        return len(self.sound)


class SpeechString:
    """init function to set up a SpeechString
    
    Attributes:
    self.string -- the input text
    self.lang -- the input language ('english' or 'japanese')
    self.char_mapping -- a dictionary mapping characters in the 
        language 'lang' to their audio sounds
    self.sound_string -- a list containing the sounds of each 
        character in the input text

    """
    def __init__(self, string, lang):
        self.string = string
        self.lang = lang
        self.char_mapping = dict()
        self._load_char_mapping()

        self.sound_string = [self._get_char_sound(c) for c in string]

    @property
    @lru_cache()
    def audio(self):
        outsound = AudioSegment.silent(duration = len(self))
        currentchar = 1
        for sc in self.sound_string:
            outsound = outsound.overlay(
                sc.sound.fade(start = DEFAULT_LENGTH, duration = 5, 
                              to_gain = -12.0), position = 75 * currentchar)
            currentchar += 1
        return outsound

    def play(self):
        play(self.audio)

    def save(self, path, **kwargs):
        if "format" not in kwargs:
            kwargs["format"] = "wav"
        self.audio.export(path, **kwargs)

    def __len__(self):
        return len(self.sound_string) * DEFAULT_LENGTH + DEFAULT_LENGTH

    # "Private" helper functions to load the character sounds and
    # character mapping from the sound file.
    def _get_char_sound(self, c):
        c = c.upper()
        return self.char_mapping.get(c, self.char_mapping["missingno"])

    def _load_char_mapping(self):
        sound_package = japanese if self.lang == JAPANESE else english

        for file in pkg_resources.contents(sound_package):
            if file.endswith(".wav"):
                filename = file[:-4].upper()
                
                # Get the hiragana character for the current sound file.
                character_name = ""
                if self.lang == JAPANESE and character_name in HIRAGANA:
                    character_name = romkan.to_hiragana(filename) 
                else:
                    character_name = filename
                
                # DEBUGGING 
                # (just a sanity check that each hiragana character gets mapped correctly)
                # print(character_name + ": " + filename + ".wav")

                wav_file = pkg_resources.open_binary(sound_package, file)
                self.char_mapping[character_name] = SpeechCharacter(filename, AudioSegment.from_file(wav_file, format = "wav"))

        for c, d in SPECIAL_CHARACTERS.items():
            self.char_mapping[c] = SpeechCharacter(c, AudioSegment.silent(duration = d["duration"]))