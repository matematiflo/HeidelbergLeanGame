import Game.Inventory

World "LogicWorld"
Level 2

Title "Distributivity of conjunction over disjunction"

Introduction "
Prove that `∧` distributes over `∨`, in the sense that `P ∧ (Q ∨ R)` is logically equivalent to `(P ∧ Q) ∨ (P ∧ R)`.

To get started, use the constructor tactic to split the equivalence into two implications.
"

/--
This theorem, proved in Level 1 of the Logic World, states that, for all `P Q R : Prop`, the proposition `P ∧ (Q ∨ R)` is logically equivalent to `(P ∧ Q) ∨ (P ∧ R)`. This says that conjunction `∧` is distributive over disjunction `∨`.
-/
TheoremDoc distribAndOr as "Distributivity of conjunction over disjunction" in "Levels"

-- The exercise (or statement) is given below.
Statement distribAndOr (P Q R : Prop) : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) :=
by {
  constructor
  Hint "To prove the implication `P ∧ (Q ∨ R) → P ∧ Q ∨ P ∧ R`, start by introducing a proof of `P ∧ (Q ∨ R)`. Since the goal is a conjunction, it will suffice to prove either the left-hand side or the right-hand side."
  · intro t
    Hint (hidden := true) "Using the `rcases` tactic, you may assume that the term `{t}` (which is a proof of `P ∧ (Q ∨ R)`) is of the form `⟨p, s⟩`, with `p` a proof of `P` and `s` a proof of `Q ∨ R`."
    rcases t with ⟨p, s⟩
    Hint (hidden := true) "Using `rcases` again, you may assume that `s` is *either* given by a proof `q` of `Q` or by a proof `r` of `R`."
    rcases s with q | r
    · left;  exact ⟨p, q⟩
    · Hint "At this point, the second case should be entirely analogous to the first one."
      right; exact ⟨p, r⟩
  Hint "Now let us prove the converse implication, namely `P ∧ Q ∨ P ∧ R → P ∧ (Q ∨ R)`. Start by introducing a proof of `P ∧ Q ∨ P ∧ R`."
  · intro t
    Hint (hidden := true) "This time, the goal is a conjunction and the term `{t}` is a proof of a disjunction. You can therefore use `constructor` to split the goal in two and use `rcases` to perform a case analysis on `{t}`."
    rcases t with hpq | hpr
    · constructor
      · exact hpq.1
      · left; exact hpq.2
    · constructor
      · exact hpr.1
      · right; exact hpr.2
}

Conclusion "
Well done! You have successfully proven that conjunction distributes over disjunction :)
"
