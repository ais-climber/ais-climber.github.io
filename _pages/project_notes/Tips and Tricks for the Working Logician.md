---
layout: page
permalink: /tipsandtricks/
title: Tips and Tricks for the Working Logician
nav: false
---
I find myself doing a lot of theoretical work in logic. Every now and then I try to prove something ambitious, and learn some hard lesson in the process. This page is me attempting to write these down so that I don't make the same mistakes again and again. If you yourself work with logics, algebras, or any other abstract object in computer science, linguistics, or cognition, I hope you find these helpful. I make no guarantees, of course -- I'm writing this primarily for myself.

1. If you're trying to characterize some property and you've tried various forms of 'for all ...' and 'there exists ...' properties with no success, the property you're trying to capture might be second-order.  That is, there may be no first-order description of the property whatsoever (which is easy to forget). I've found that a common second-order property is the 'core' construction from topology, which looks something like:
   $a \in \bigcap_{X \in f(b)} X$
   A sort of prototypical situation where this comes up for me: I already have a neighborhood function $f : S \to \mathcal{P}(\mathcal{P}(S))$ (or equivalently, some $g : \mathcal{P}(S) \to \mathcal{P}(S)$) and I want to "shove" it into a relation, i.e. make a relation $R : S \times S$ that matches up with it.