input ← ⊃⎕NGET 'day01.txt'1
input ← ⍎¨input

DeltaIncreases ← {+/0>2-/⍵}
⍝ Part 1
⎕ ← DeltaIncreases input
⍝ Part 2
⎕ ← DeltaIncreases 3+/input
