[Position Paper, targeting NeSy community]


**Goals:**
1. Introduce a unified theory of neural-symbolic systems ("semantic embeddings" + neural network semantics).  Emphasize the role of fixed-points/closures, as well as soundness/completeness/model-building
2. Identify examples (how do the major proposals fit into this framework?)
3. Respond to [van Harmelen](https://labs.iospress.com/news-blog/neuro-symbolic-artificial-intelligence-state-art); show that this theory *does* allow us to ask these questions (frame each question formally)
4. Identify the major open questions + call for all theoreticians (logicians + deep learning theorists) to work on them!!

**This is a call for action + open question proposal that complements [this survey](https://arxiv.org/abs/2212.12050) by Odense and Garcez**

**Ideas for open questions:**
- What dynamic belief/preference upgrade policy corresponds to gradient descent?  Soundness?  Model-building/completeness?
- What neural network operator, over what architecture, is a sound + complete implementation of first-order logic quantifiers?  (Or possibly calculus of constructions)
- Can we extend these logics/model-building to handle uncertainty/bias/probability in inferences?

**Ides for links to make:**
- What is the relationship between this work + category theory for machine learning / cybernetics?
- What is the relationship between this neuro-symbolic theory and the automata work done by FLaNN?
- How do other neural-symbolic proposals fit into this one?

**Paper Outline:**
1. Introduction
	- "This paper is a response to  [van Harmelen](https://labs.iospress.com/news-blog/neuro-symbolic-artificial-intelligence-state-art).  They suggest that there doesn't currently exist a unified theory of neural and symbolic systems that even allows us to ask the following questions" (then list the questions)  "I will argue that in fact such a theory has been developing, and I will show exactly how the above questions get formalized in this theory.  This is part position paper and part call-to-action; my hope is that this paper will inspire hopeful logicians and deep-learning theorists on both ends of the divide to get cracking on developing this theory."
	- A helpful defining of terms at the beginning:
		- **Soundness** and **Verification**
		- **Completeness** and **Model-Building**
		- (free abuse of the words soundness and completeness)
		- **Neural-Symbolic Embeddings** (draw diagram!)
2. A Unified Neural-Symbolic Theory
	- A technical introduction to the framework
	- Would be helpful at this stage to go through the different correspondences that have been discovered
	- Incorporate *all* of the theory!  Including Garcez/Lamb/Gabbay's books on soundness + completeness, as well as the survey, etc!  Include 1989 Becker work on neural network implementation of case-based reasoning.  All of the correspondences I can think of are free game to mention here.  Essentially say which of the questions have now been answered.  Organize all of this information into a helpful visual (e.g. a table or something)
3. A List of Open Questions
	- Here's where I go through and identify:
		- The questions in van Harmelen's paper that we can now "begin to ask", as well as
		- a couple new questions that I consider important to the development of the field
	- Formalize each of the questions, "bird by bird", into this framework.  Questions should reduce to things like
		- Is there sound + complete model-building for [THIS LOGIC]
		- What is the classical model implementation of [THIS NEURAL OPERATOR]
		- What is the neural network implementation of [THIS CLASSICAL OPERATOR]
		- include both static operators + neural network architectures, as well as dynamic/learning operators
	- Note, I'm phrasing these questions in a logical way because I come from logic/knowledge representation.  But these questions are *both* logical ones and deep learning ones; on the logical end, we have questions of axioms and completeness, and classical model-building is very familiar to logicians.  But the peculiarities of model building for neural networks requires neural network researchers to join.
4. Friends of the Neural-Symbolic Theory
	- There have been, of course, other theoretical approaches to understanding learning/reasoning and neural/symbolic systems.  But I believe that they are deeply connected with this one (perhaps they're essentially the same theory?)  In this section, I'll go through each of the major theoretical approaches and draw a bridge between them and this unified neural-symbolic theory.
	- **Cybernetics / Category Theory for Machine Learning**
	- **Formal Languages and Neural Networks**
5. Closing Comments