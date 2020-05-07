\version "2.18.2"
\language "english"

\header {
  title = "E"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "E Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' aflat' b'>1-"root"
    <aflat' b' e''>1-"1st"
    <b' e'' aflat''>1-"2nd"
  }
}

\markup { "E Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' g' b'>1-"root"
    <g' b' e''>1-"1st"
    <b' e'' g''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "E Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' aflat' b' eflat'>1-"root"
    <aflat' b' eflat' e'' >1-"1st"
    <b' eflat' e'' aflat''>1-"2nd"
    <eflat' e'' aflat'' b''>1-"3rd"
  }
}

\markup { "E Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' g' b' d'>1-"root"
    <g' b' d' e'' >1-"1st"
    <b' d' e'' g''>1-"2nd"
    <d' e'' g'' b''>1-"3rd"
  }
}

\markup { "E Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' aflat' b' d'>1-"root"
    <aflat' b' d' e'' >1-"1st"
    <b' d' e'' aflat''>1-"2nd"
    <d' e'' aflat'' b''>1-"3rd"
  }
}

\markup { "E Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' g' bflat' dflat'>1-"root"
    <g' bflat' dflat' e'' >1-"1st"
    <bflat' dflat' e'' g''>1-"2nd"
    <dflat' e'' g'' bflat''>1-"3rd"
  }
}