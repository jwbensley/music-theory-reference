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
    <f' af' c'>1-"root"
    <af' c' f''>1-"1st"
    <c' f'' af''>1-"2nd"
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
    <f' af' c' ef'>1-"root"
    <af' c' ef' f'' >1-"1st"
    <c' ef' f'' af''>1-"2nd"
    <ef' f'' af'' c''>1-"3rd"
  }
}

\markup { "F Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' a' c' ef'>1-"root"
    <a' c' ef' f'' >1-"1st"
    <c' ef' f'' a''>1-"2nd"
    <ef' f'' a'' c''>1-"3rd"
  }
}

\markup { "F Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <f' af' b' d'>1-"root"
    <af' b' d' f'' >1-"1st"
    <b' d' f'' af''>1-"2nd"
    <d' f'' af'' b''>1-"3rd"
  }
}