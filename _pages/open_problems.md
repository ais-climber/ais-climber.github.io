---
layout: page
permalink: /open_problems/
title: Open Problems I Like
description: 
nav: false
---
Here is a list of open problems I'm personally invested in. I'm writing this to help myself stay organized and motivated, and also to share what I'm currently thinking about. Problems attributed with ✨ are, as far as I'm aware, my own. If you spot any errors/misattributions, or if you're aware of any updates please let me know!  I'm also open to collaborate on any of these -- see my [contact page](/contact/).
## Epistemic & Modal Logics
- (TODO) Modern syllogistic logics tend to consider counting quantifiers such as `More x y`, `AtLeast x y`, and `Most x y`.  As a qualitative alternative, consider reasoning about prototypes, `Typically x y`.  What is the complete 'minimal' syllogistic logic of `Typically`?
- 

## Logics for Learning & Belief Revision
- 
- 

## Neural & Social Network Models
- (TODO) Can we characterize the class of neural networks whose forward propagation (of node activations) has a unique fixed point?
- (TODO) What are the complete axioms for Logic Tensor Networks?  (Just showing soundness is still open!)
- (✨) What is the "classical model equivalent" of Iterated Hebbian Learning?  i.e. is there a dynamic update, over say possible-worlds models, that is equivalent to Iterated Hebbian Learning?  What about other variants of Hebbian learning?
- (✨) What is the complete logic for *convergent* Hebbian learning (using Oja's rule)?
- (✨) What is the complete logic for supervised learning by gradient descent?
- (TODO) There are many different measures of complexity for neural networks.  On the one hand, we can view different neural networks as language recognizers (CITE).  On the other, we can view a neural network architecture as a logical model, and then characterize its complexity by the expressivity of the logic.  Moreover, the logic has its own complexity measures (satisfiability, decidability, ...).  How precisely are these all related?

## Games
- [📝](/alphago_misere/) (TODO) AlphaGo Zero, via reinforcement learning and self-play, can learn winning strategies for nearly any two-player turn-based game, including Go, Chess, Othello, Connect4, Tic-Tac-Toe, and more.  Recently, TODO showed that AlphaGo Zero fails to learn a winning strategy for the game [Notakto](https://en.wikipedia.org/wiki/Notakto).  What is it about Notakto that makes it challenging to learn?
- [📝](/notes_on_tcfgs/) (TODO) Given a tournament, a Tiered Coalition Formation Game is the task of making a tier list that resolves all the cycles in a stable way.  There are many different ways to define stability; one is "local stability," which asserts that swapping any two agents in the tier list results in a *worse* `#forward edges - #backward edges`.  Is local stability polynomial time for *weighted* tournaments?

> [!theorem] Example Theorem
> Content

