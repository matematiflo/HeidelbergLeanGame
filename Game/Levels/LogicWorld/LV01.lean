import Game.Metadata
import Game.Inventory

World "LogicWorld"
Level 1

Title "Symmetry of conjunction"

Introduction "
In this first level, you are asked to prove that the propositions `P ∧ Q` and `Q and P` are logically equivalent.
"

-- The exercise (or statement) is given below.
Statement symmAnd (P Q : Prop) : P ∧ Q ↔ Q ∧ P := by
  Hint "Use the 'constructor' tactic to split this equivalence into two implications."
  constructor
  · exact fun pq => ⟨pq.2, pq.1⟩
  Hint (hidden := true) "First introduce a proof of `P ∧ Q` and use it to construct a proof of `Q ∧ P`. Then do the same for the implication `Q ∧ P → P ∧ Q`."
  · exact fun qp => ⟨qp.2, qp.1⟩

Conclusion "
Well done! You have successfully proven that conjunction of `P ∧ Q` is logically equivalent to `Q ∧ P`.
"
