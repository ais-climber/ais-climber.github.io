from animalese.lib.speech import SpeechString
import argparse

def main():
    # Parse command line arguments
    parser = argparse.ArgumentParser()
    input_help = "Select input file (must give input.txt). If not given, the script takes input from the command line."
    parser.add_argument("-i", "--input", help = input_help, required = False, default = "")

    save_help = "Save the final audio to /output (must give 'filename.wav')"
    parser.add_argument("-s", "--save", help = save_help, required = False, default = "")
    
    lang_help = "Choose input language ('english'/'japanese')"
    parser.add_argument("-l", "--language", help = lang_help, required = False, default = "english")
    
    arg = parser.parse_args()
    
    # Option to load input from a file
    text = ""
    if arg.input:
        with open(arg.input, 'r') as f:
            text = f.read()
    else:
        print("Input text:")
        text = input("> ")

    # Run the script with the chosen language.
    speech = SpeechString(text, arg.language)
    print(len(speech.sound_string))
    speech.play()

    # Option to save the output to a file.
    if arg.save:
        speech.save("./output/" + arg.save)
    print("Done!")


if __name__ == "__main__":
    main()
