Here is a list of open problems I'm personally invested in. I'm writing this to help myself stay organized and motivated, and also to share what I'm currently thinking about. Problems attributed with ✨ are, as far as I'm aware, my own. If you spot any errors/misattributions, or if you're aware of any updates please let me know!  I'm also open to collaborate on any of these -- see my [contact page](/contact/).
## Modal Logics and More
- Open Question 2.6 in {% cite sizes_of_sets --file references %}: Modern syllogistic logics tend to consider counting quantifiers such as 'More x y', 'AtLeast x y', and 'Most x y'.  As a qualitative alternative, consider reasoning about prototypes, 'Typically x y'.  What is the complete 'minimal' syllogistic logic of `Typically`?
- (✨) In the Coda of {% cite open_minds --file references %}, van Benthem introduces a sequence of dynamic logics for reasoning about quantifiers, building up to standard first-order logic.  Using description complexity, what complexity classes (if any) correspond to these logics?  What about if we added a fixed-point operator to each of these logics?  What can we say about the expressivity of each of these logics, when compared against other extensions of FOL, as well as SOL?
  
  *Warning: This problem is dangerously close to P vs NP!  Try not to look it directly in the eyes!*

## Logics for Learning & Belief Revision
- [📝](/model_theory_of_learning/) (TODO) Develop the model theory of learning.  What axioms capture important properties of learning (e.g. induction, no forgetting, )?  What do models of these properties look like?  Are there "correspondences" between axioms and properties of models, as there often are in modal logic?
- (✨) We can think of belief revision operators $[P]$ as a kind of unsupervised learning; they *push us in the direction* of $P$, but otherwise do not give us an expected "answer" or "inference" for $P$.  What about supervised learning -- in the machine learning sense, say $[P; Q]$ indicates an update that establishes $P \Rightarrow Q$?  How should we model supervised learning, especially so that it doesn't trivially reduce to unsupervised learning?
- (✨) A common construction in modal logic is to take the transitive closure $\Box^\ast$ of an operator $\Box$; the complete logic of $\Box^\star$ is then axiomatized using a transitive closure rule and an induction rule.  What about the *transitive closure,* i.e. deriving a minimal step-wise operator $\Box^-$ from $\Box^\ast$?  I'm especially interested in this within a *dynamic* context:  Given $[P]$, what is the complete logic of $[P], [P]^\ast, [P]^-$?

## Neural & Social Network Models
- (TODO) Can we characterize the class of neural networks whose forward propagation (of node activations) has a unique fixed point?
- (✨) What is an appropriate logic for neural networks whose forward propagation *does not* have a unique fixed point (i.e. it may oscillate, or otherwise get stuck in a loop)?
- (TODO) What are the complete axioms for Logic Tensor Networks?  (Just showing soundness is still open!)
- [📝](/nn_learning_and_belief_revision/) (✨) What is the precise relationship between neural network models for learning and "classical" models for dynamic update?  Are there dynamic updates that correspond to neural network learning policies (e.g. Hebbian learning)?  And the other way around, are there neural network learning policies that correspond to known dynamic updates?
- (✨) What is the complete logic for *convergent* Hebbian learning (using Oja's rule)?
- (✨) What is the complete logic for supervised learning by gradient descent?
- (✨) On the one hand, we can view neural networks as language recognizers (CITE).  On the other, we can view them as models of particular logics (CITE).  What is the precise relationship between these two perspectives on neural network complexity?

## Games
- [📝](/alphago_misere/) {% cite notakto_alphago --file references %} AlphaGo Zero, via reinforcement learning and self-play, can learn winning strategies for nearly any two-player turn-based game, including Go, Chess, Othello, Connect4, Tic-Tac-Toe, and more.  Recently, TODO showed that AlphaGo Zero fails to learn a winning strategy for the game [Notakto](https://en.wikipedia.org/wiki/Notakto).  What is it about Notakto that makes it challenging to learn?
%% - [📝](/notes_on_tcfgs/) (TODO) Given a tournament, a Tiered Coalition Formation Game is the task of making a tier list that resolves all the cycles in a stable way.  There are many different ways to define stability; one is "local stability," which asserts that swapping any two agents in the tier list results in a *worse* `#forward edges - #backward edges`.  Is local stability polynomial time for *weighted* tournaments? %%

## References
{% bibliography --cited --group_by none --file references --bibliography_template none %}