\version "2.24.3"
\language "english"

\header {
  title = "E"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "E Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' af' b'>1-"root"
    <af' b' e''>1-"1st"
    <b' e'' af''>1-"2nd"
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
    <e' af' b' ef'>1-"root"
    <af' b' ef' e'' >1-"1st"
    <b' ef' e'' af''>1-"2nd"
    <ef' e'' af'' b''>1-"3rd"
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
    <e' af' b' d'>1-"root"
    <af' b' d' e'' >1-"1st"
    <b' d' e'' af''>1-"2nd"
    <d' e'' af'' b''>1-"3rd"
  }
}

\markup { "E Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <e' g' bf' df'>1-"root"
    <g' bf' df' e'' >1-"1st"
    <bf' df' e'' g''>1-"2nd"
    <df' e'' g'' bf''>1-"3rd"
  }
}