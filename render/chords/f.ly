\version "2.18.2"
\language "english"

\header {
  title = "F"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "F Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' a' c'>1-"root"
    <a' c' f''>1-"1st"
    <c' f'' a''>1-"2nd"
  }
}

\markup { "F Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' aflat' c'>1-"root"
    <aflat' c' f''>1-"1st"
    <c' f'' aflat''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "F Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' a' c' e'>1-"root"
    <a' c' e' f'' >1-"1st"
    <c' e' f'' a''>1-"2nd"
    <e' f'' a'' c''>1-"3rd"
  }
}

\markup { "F Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' aflat' c' eflat'>1-"root"
    <aflat' c' eflat' f'' >1-"1st"
    <c' eflat' f'' aflat''>1-"2nd"
    <eflat' f'' aflat'' c''>1-"3rd"
  }
}

\markup { "F Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' a' c' eflat'>1-"root"
    <a' c' eflat' f'' >1-"1st"
    <c' eflat' f'' a''>1-"2nd"
    <eflat' f'' a'' c''>1-"3rd"
  }
}

\markup { "F Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' aflat' b' d'>1-"root"
    <aflat' b' d' f'' >1-"1st"
    <b' d' f'' aflat''>1-"2nd"
    <d' f'' aflat'' b''>1-"3rd"
  }
}