
### Logic & Neural Network Learning (PhD Thesis)
---
#### Urgent
- [ ] **[AAAI 2024]** Remove all 'sorry's & axioms from Lean code for Hebbian learning
	- [x] Redefine `connected` as a property of the net
	- [x] [Not needed] Prove `map_edges_apply`
	- [x] Put `acyclic` back in as a property of the net 
	- [x] Move the acyclic proofs around accordingly
	- [x] Prove `graph_update_acyclic`
	- [x] Prove `graph_update_connected`
	- [x] Prove `connected` for `hebb`
	- [x] Prove `acyclic` for `hebb_star`
	- [x] Prove `connected` for `hebb_star`
	- [x] Prove `edge_from_preds` (rename to `edge_iff_preds`)
	- [x] Fix the definition of `hasEdge`
		- [x] Change the definition of `hasEdge` to use a `lookup`
		- [x] Change definition of `predecessors` to call `hasEdge`
		- [x] Change definition of `successors` in turn
		- [x] Prove `lookup_mem`
		- [x] Prove `edge_of_hasEdge`
		- [x] Prove `edge_iff_preds`
		- [x] Prove `graph_update_predecessors`
		- [x] Prove `graph_update_successors`
		- [x] Prove `graph_update_edges`
		- [x] Prove `graph_update_star_predecessors`
		- [x] Prove `graph_update_star_successors`
		- [x] Prove `graph_update_star_edges`
	- [ ] Fix the definition of `layer`
		- [x] Prove `sizeOf_erase`
		- [ ] Prove that `layer` is terminating.  (What is decreasing at each step?? -- the maximum layer of predecessors?)
		- [ ] Fix the definition of `layer_acc` so that I can actually prove things about it
		- [ ] Prove `layer_wellfounded`
		- [ ] Prove `layer_preds`
		- [ ] Prove `layer_connected`
		- [ ] Prove `hebb_once_layers`
		- [ ] Prove `hebb_layers` (same proof as `hebb_once_layers`)
	- [x] Fix the definition of `getEdgeWeight`
		- [x] Fix the definition of `getEdgeWeight` so that I can actually prove things about it
		- [x] Prove lookup_map
		- [x] Prove `hebb_once_weights_eq`
		- [x] Prove `hebb_once_weights_le`
		- [x] Prove `hebb_weights_le`
	- [x] Remove `hebb_lift` and prove lifted properties by hand
	- [ ] Finally, fill in the main proof!
		- [x] Prove `sum_le_zero` (helper lemma)
		- [ ] Prove `lookup_none` (helper lemma)
		- [x] Fix `weighted_sum_le` (now that I'm using `List.sum`)
		- [x] Prove `min_score_le` (make sure the statement is correct)
		- [x] Define `no_times`
		- [x] Prove `no_times_pos` (make sure the statement is correct)
		- [ ] Prove `hebb_activated_by`
- [ ] **[AAAI 2024]** Add (neural) soundness to Lean code for Hebbian learning
	- [ ] Prove Loop property for Prop
	- [ ] Define the syntax of the logic (K, T, include belief?)
	- [ ] Define the (neural) semantics (preferential models)
	- [ ] Define the proof system
	- [ ] Prove soundness for each of the individual axioms
		- [ ] Soundness of Modus Ponens
		- [ ] Soundness of necessitation (K)
		- [ ] Soundness of necessitation (T)
		- [ ] Soundness of Distr (K)
		- [ ] Soundness of Refl (K)
		- [ ] Soundness of Trans (K)
		- [ ] Soundness of Grz (K)
		- [ ] Soundness of Refl (T)
		- [ ] Soundness of Trans (T)
		- [ ] Soundness of Loop (T)
		- [ ] Soundness of Skel (K + T)
	- [ ] Prove (neural) soundness for all sentences (in general)
	- [ ] Define the syntax of the dynamic logic
	- [ ] Define the (neural) semantics for the dynamic logic
	- [ ] Prove soundness for each of the reduction axioms
		- [ ] Soundness of propositional case
		- [ ] Soundness of Neg case
		- [ ] Soundness of And case
		- [ ] Soundness of K case
		- [ ] Soundness of T case
- [ ] **[AAAI 2024]** Convince myself that the reduction rules terminate
- [ ] **[FLAIRS Errata]** Correct all lemmas from the FLAIRS paper, and prove them in Lean.
	- [ ] Definition 5 (subnet)
	- [ ] Lemma 2 (but make the appropriate changes to activation function)
	- [ ] Corollary 1
	- [ ] Correct Inclusion + prove it
	- [ ] Prove Absorption for Hebb
	- [ ] Correct Local + prove it
	- [ ] Prove Cumulative property for Hebb
	- [ ] Prove Loop property for Hebb
- [ ] **[FLAIRS Errata]** Implement semantics from the FLAIRS paper, and prove soundness in Lean.
- [ ] **[Thesis]** Figure out complete axioms for K/T, prove soundness (Prop/Reach) in Lean.
#### Important
- [ ] **[AAAI 2024]** Respond & revise to reviewer feedback
- [ ] **[AAAI 2024]** After reviewer feedback, write full paper with proofs & upload to Arxiv
- [ ] **[Thesis]** Prove Hebb* is actually the fixed-point of Hebb (Hebb o Hebb* gives Hebb*)
- [ ] **[Thesis]** Prove that classical K and T are equivalent to neural K and T
- [ ] **[Thesis]** Make simpler Hebbian learning policies in Lean & prove their reduction properties.
- [ ] **[Thesis]** Make classical versions of these policies & prove their equivalence in Lean.
- [ ] **[IJCAI 2024]** Supervised belief revision; develop theory on its own first
- [ ] **[NeSy 2024]** Lift results for fuzzy & probabilistic interpretations (see Giordano)
- [ ] **[Thesis]** Supervised belief revision; think about neural network interpretations
- [ ] Make all the Lean code for Hebbian learning *computable*.
- [ ] Set up lean code to be a formally verified neural network suite (real-world neural network, with killer examples)
#### Achievements
- [x] **[Thesis]** Rewrite Lean code to use Reach instead of conditional reach
	- [x] Prove all paths can be shortcutted with an edge
	- [x] Prove property for Reach at layer 0
	- [x] Prove Reach is extensive
	- [x] Prove Reach is idempotent
	- [x] Prove Reach is monotone
	- [x] Prove Reach is closed under union
	- [x] Fix proof that Hebb doesn't affect Reach
	- [x] Prove Reach_empty_of_inter_empty
	- [x] [Not needed] Prove Prop-Reach inclusion
	- [x] Correct the statement of the reduction
	- [x] Fix proof for hebb_updated_path
	- [x] Fix proof for reach_of_hebb_prop
	- [x] Fix proof of reduction
	- [x] Fix proof of empty case (corollary of reduction)
	- [x] Remove `reachable` definitions and properties, then replace `reachable₂` with `reachable`
- [x] **[Thesis]** Recover the minimal cause property, and try to write it as a K+T axiom (for K+T completeness)
	- [x] Define Reachedby
	- [x] [False!] Prove Reachedby property at layer 0
	- [x] Prove Reachedby is extensive
	- [x] Prove Reachedby is idempotent
	- [x] Prove Reachedby is monotone
	- [x] Prove Reachedby is closed under union
	- [x] Prove Path_of_preds
	- [x] Move the minimal cause property, uncomment, fix
	- [x] Write in a comment above the K$^\downarrow$+T axiom we get, as well as the K+K$^\downarrow$ interaction axioms

#### Until I have good ideas
- [ ] Prove completeness for transitive reduction (single-step update) of a dynamic modal operator
- [ ] Prove sound axioms for Logic Tensor Networks (or a modified version of the logic)
- [ ] Neural network semantics for recurrent nets (intransitive preference, or temporal logic?)
- [ ] Supervised belief revision policy that is equivalent to gradient descent/backprop

### Internship Applications 2023-2024
---
- [ ] Fix website (github hosting, but maybe I should try TexMacs?  
      See: https://mgubi.github.io/docs/main.html)
- [ ] Fix resume; it should be larger font, cleaner, easier to read; updated with new paper
- [ ] Identify 75 companies with roles I'd be happy with; see if I can get email alerts
- [ ] Organize efforts into a list in Obsidian this time (maybe with a checklist for each)
- [ ] Apply to roles as they come up, beginning September 1st

### Professional Development & Improving Tools
---
- [ ] **[Arxiv]** Finally put Sizes of Sets full paper (with proofs) together and post on Arxiv
- [ ] **[Arxiv]** Finally put FLAIRS full paper (with proofs) together and post on Arxiv
- [ ] Learn how to make figures in Inkscape that look like they were drawn on a whiteboard
      & port them into Latex with fonts (make a few!)
- [ ] Learn how to make a presentation in TexMacs (including animations) (make one or two!)
- [ ] Make a TexMacs style file for presentations, inspired by the whiteboard-drawing slides I saw
- [ ] Learn how to properly use simp and Aesop tactics (will be very helpful for the future!)
- [ ] Make a Lean --> structured English --> LaTeX converter (should be possible!!)
- [ ] Make a LaTeX --> TexMacs style file converter (should be possible!!)

### Deep Cleaning & Archiving
---
- [ ] Organize all important papers in a binder
- [ ] Take all paper, notecard, online, and .txt "ideas" notes and put them in Idea Dump
- [ ] Go through all Chrome tabs, archive the ones I like in Books & Media
- [ ] Go through old flash drives and organize photos/files/notes, etc.
- [ ] Organize away pictures on phone
- [ ] Clean desk at Luddy
- [ ] Write down contact info & a photo for everybody who has ever been a big part of my life

### Graduating!!
---
- [ ] **[Masters Degree]** Do an audit of my Masters degree & submit by September 20th.
- [ ] **[PhD Proposal]** 

Larry's band playing on the radio (tomorrow?  or tonight?)
WFHB 9PM
- Discover Student
- American Express Blue Cash Every Day

**TODO for 9/12/23**
- [x] Find wedding certificate, and scan it to laptop
- [x] Fill out form to add Sabrina to my insurance
- [x] Email back lucid dreaming study email
- [ ] Work out what I need to do for Masters degree audit + graduation
- [x] Make a schedule for myself (for this semester), including Gym, logic seminar, cognitive lunch, La Casa, lucid dreaming meetups, drumming, and scheduled calling people/sending memes