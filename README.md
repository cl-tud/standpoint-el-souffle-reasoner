# standpoint-el-souffle-reasoner

A Standpoint EL+ deduction calculus implementation in [Soufflé](https://souffle-lang.github.io/index.html).

## Standpoint EL

Standpoint logics are formal logic-based knowledge representation languages (rooted in modal logics) for representing differing (potentially contradictory) viewpoints in a unified way.
More specifically, Standpoint EL is the standpoint version of the description logic EL(+).

## Deduction Calculus

The implemented calculus decides satisfiability of Standpoint EL+ knowledge bases.
Via reductions, this can be used to also decide entailment of statements.

## Normalisation

The deduction calculus requires the knowledge base to be in a specific normal form.
The implementation's modules for [phase 1](lib/normalisation1.dl) and [phase 2](lib/normalisation2.dl) normalisation rules take care of normalising input that uses the full expressiveness of Standpoint EL+.

## Input language

The input to the calculus is provided as a list of facts for the predicate `kb`.
The concrete syntax to be used is declared in [types.dl](lib/types.dl).
Two small examples are available, one [satisfiable](tests/test01/kb.facts), the other [unsatisfiable](tests/test02/kb.facts).

## Output

The predicate `empty` collects all concept names that have been detected to necessarily be empty by the calculus.
Consequently, the given input knowledge base is inconsistent if and only if the concept name `c_top` (standing for the top concept) is among the predicates that have to be `empty`.
