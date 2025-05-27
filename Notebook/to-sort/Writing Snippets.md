I study the foundations of machine learning and cognition, often through the lens of formal logic. My current work is in the *theory of neuro-symbolic AI*, through which I hope to (1) better understand the power and limitations of neural network learning, (2) bridge the gap between neural network learning and belief revision (dynamic epistemic updates), and (3) explore the possibility of neural network alignment.

### I really like this phrasing:
A long-standing problem in AI and cognitive science is to bridge the gap of understanding between neural networks and symbolic (logic) systems. On the one hand, neural networks are able to learn without human guidance, which seems incompatible with the brittle nature of logic. On the other, neural networks often make logical blunders that seem silly from the point of view of logic. In response to this dichotomy, there have been countless proposals for "neuro-symbolic" systems that incorporate logic into neural networks, or vice versa, in an attempt to retain the advantages of both.

**and also:**
using a modal language rich enough to express inference over the neural network
We interpret inference $\Box \varphi \to \psi$ over the net as "$\psi$ is activated by the forward propagation (or diffusion) of input $\varphi$ through the net" -- in other words, "the net classifies $\varphi$ as $\psi$."

### Talk for LIRa Seminar, September 5 2024
**Title:** The Modeling Power of Neural Networks
**Abstract:** Neural networks are very good at learning without human guidance, yet they're also known for making blunders that seem silly from the point of view of logic. (And this situation hasn't changed, despite modern neural network systems like GPT-4). This is a long-standing problem in artificial intelligence: How can we better understand and control neural networks using logic? In response, there have been countless proposals for "neuro-symbolic" systems that incorporate logic into neural networks, or vice versa.

In this talk I will present one such proposal that is close to the hearts of modal and epistemic logicians: Treat (binary) neural networks as a class of models in modal logic by (1) adding a valuation of propositions (as sets of neurons), and (2) interpreting $\Box \varphi$ as the forward propagation (or diffusion) of input $\varphi$ through the net. We can then do "business as usual," using neural networks as our models. To cement this idea, I will compare the modeling power of neural networks with other classes of models, in particular: relational, plausibility, neighborhood, and social network models. If time permits, I will mention recent work in which we "dynamify" this logic, in the spirit of modeling neural network update and learning.

This talk is based on joint work (in progress) with Saúl Blanco and Larry Moss. Our work on the dynamics of neural network update appears in AAAI 2024 and FLAIRS 2022.



### Main notes for fixing DFF2 Proposal
- **Emphasize:** What is the *concrete* benefit of using dynamic logic to answer these questions?
	- Two possible answers: (1) is that dynamic logic has a knack for having succinct representations of interesting properties, and we can do this to characterize different kinds of learners; (2) is that, in dynamic logic, **soundness** means property verification of learning (making sure the learning does what it's supposed to), and **completeness/model building** means that we can build a model that learns what it's supposed to, and **expressivity** means simulating different learning policies with each other.
	- The point here is to say *how dynamic logic will actually answer the question!!*
- Instead of splitting into topological spaces / neural networks, we could instead split the project into "Characterizing Learners using Dynamic Logics" and "Verifying and Building Learners using Dynamic Logics"
- The PI and postdoc coming together are each experts in these two approaches, but we need to *unify and extend* the two.
- Why do we need to understand & guide learners?? Modern machine learning methods come with *no guarantees!!*
- Collaborator names listed should be **strong**, not too many, balance of topological/logic people and more practical people from NeSy
- Say that the PI and Postdocs' roles will be on the theoretical development side, emphasize our respective expertise. Say that PhD student's role will be to implement experiments/computer simulations for these updates, say which parts of the proposal this will be a part of
- **Send emails to:** Hannes Leitgeb, Thomas Icard, Alexandru Baltag, Zoe Christoff, Larry Moss, Artur d'Avila Garcez, Patrick Blackburn, Torben Brauner
	- From each person, ask for: 1 page CV & support letter (letter where they say they support the project)
	- Doesn't mean any work from them, unless they're interested (we could invite them to give a workshop, or visit them, but no obligations whatsoever)
	- Emphasize: It doesn't ask much work from them!