Split ← (≢⍤⊣↓¨,⊂⍨⊣⍷,) ⍝ thanks aplcart

⍝ yep UCS is my newline
⍝ drop one to avoid the trailing newline
input ← ¯1↓ (2⍴⎕UCS 10) Split ⊃⎕NGET 'day04.txt'
draws ← ⍎¨','Split⊃input
boards ← {↑⍎¨⊃' 'Split (⎕UCS 10)Split ⍵}¨1↓input

IsBingo ← {(∨/∧/⍵)∨(∨/∧/[1]⍵)}

⍝ board fn draws
CalledSpots←{⊃∨/(⊂⍺)=¨⍵}

⍝ board fn draws
BingoWhen ← {draws←⍵ ⋄ ⍺{⍺CalledSpots⍵↑board}¨⍳≢⍵}

⎕←draws
⎕←⊃boards
