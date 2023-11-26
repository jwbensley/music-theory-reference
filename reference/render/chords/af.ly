\version "2.18.2"
\language "english"

\header {
  title = "A♭"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "A♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' c' ef'>1-"root"
    <c' ef' af''>1-"1st"
    <ef' af'' c''>1-"2nd"
  }
}

\markup { "A♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' b' ef'>1-"root"
    <b' ef' af''>1-"1st"
    <ef' af'' b''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "A♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' c' ef' g'>1-"root"
    <c' ef' g' af'' >1-"1st"
    <ef' g' af'' c''>1-"2nd"
    <g' af'' c'' ef''>1-"3rd"
  }
}

\markup { "A♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' b' ef' gf'>1-"root"
    <b' ef' gf' af'' >1-"1st"
    <ef' gf' af'' b''>1-"2nd"
    <gf' af'' b'' ef''>1-"3rd"
  }
}

\markup { "A♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' c' ef' gf'>1-"root"
    <c' ef' gf' af'' >1-"1st"
    <ef' gf' af'' c''>1-"2nd"
    <gf' af'' c'' ef''>1-"3rd"
  }
}

\markup { "A♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <af' b' d' f'>1-"root"
    <b' d' f' af'' >1-"1st"
    <d' f' af'' b''>1-"2nd"
    <f' af'' b'' d''>1-"3rd"
  }
}