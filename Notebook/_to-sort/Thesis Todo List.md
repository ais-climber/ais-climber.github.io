## Proofs, Examples, and Figures Left to Do

1. Introduction
   
2. Background: Defeasible Reasoning in Artificial Intelligence
   
3. Neural Network Semantics
	 - [ ] **Proof:** Once I have identified the correct Clos/Reach interaction property, I need to prove that it holds here.
	 - [ ] **Proof:** Proposition 5.5, we can semantically express conditionals in L_best
	 - [ ] **Proof:** Once I have identified the correct Clos/Reach interaction property, I need to finish the proof of soundness here.
	
	 - [ ] **Example:** Running example illustrating how the semantics gets used
	 - [ ] **Example:** Illustrative example (using the running example) of how the proof system can be used to formally verify properties of a class of neural networks, and how we can use this to interpret something about a particular neural network.

4. Neural Network Model Constructions
	 - [ ] **Proof:** Prop 2.3, the canonical neural network is a well-defined (infinite) neural network model
	 - [ ] **Proof:** Lemma 2.4, the truth lemma (once I've picked the right activation function)
	
	 - [ ] **Proof:** A filtration of a net preserves all formulas true in that net, at every neuron
	 - [ ] **Proof:** If set of constraints is finite, the filtration of a net is finite
	 - [ ] **Proof:** The fine filtration is in fact a filtration
	 - [ ] **Proof:** The finite model property
	 - [ ] **Proof:** Finite model building
	
	 - [ ] **Proof:** Net simulates Rel
	 - [ ] **Proof:** Net simulates Univ
	 - [ ] **Proof:** Nbhd simulates Net
	 - [ ] **Proof:** Net* simulates Net, Net* simulates Plaus (NAND construction from Leitgeb), Net and Plaus do not simulate one another
	 - [ ] **Proof:** Net simulates majority-vote social networks
	
	 - [ ] **Definition:** Filtration of a net
	 - [ ] **Definition:** Define the fine filtration
	
	 - [ ] **Example:** fix running example so that it uses the new model construction
	 - [ ] **Example:** Running example, using constructed model from before, this time illustrating how that model will inevitably break after a round of Hebbian update or backpropagation.

5. Dynamic Update in Neural Network Semantics
	 - [ ] **Formatting:** Fix formatting in the proof of prop 2.7. While I'm at it, make sure the proof is still correct.
	 - [ ] **Formatting:** Fix formatting for the proof of Lemma 2.13 (the table is much too tightly compressed)
	 - [ ] **Formatting:** Make sure table has correct spacing in Corollary 3.5
	
	 - [ ] **Definition:** 5.1, reduction axioms for Hebb*
	 - [ ] **Definition:** Term rewriting translation system
	
	 - [ ] **Proof:** proposition 2.12, which is similar to the proof above.
	 - [ ] **Proof:** these reduction axioms are sound
	 - [ ] **Proof:** Each tr(phi) is update-operator free (also fix the statement to be better)
	 - [ ] **Proof:** Each tr(phi) actually terminates (fix this statement to be more precise)
	 - [ ] **Proof:** phi is equivalent to its translation (in the right logic)
	 - [ ] **Proof:** Model building for the Hebb* language
	 - [ ] **Proof:** Put it all together in the completeness proof
	 - [ ] **Example:** Fix the failure of the running example before; since we know the dataset that we're learning ahead of time, we can ensure that after learning the constraints still hold.

6. Neural Network Semantics for First-Order Logic
	 - [ ] **Definition:** Class of VANs, extended FO language
	 - [ ] 

7. Conclusions