\version "2.24.3"
\language "english"

\header {
  title = "D♭"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "D♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' f' af'>1-"root"
    <f' af' df''>1-"1st"
    <af' df'' f''>1-"2nd"
  }
}

\markup { "D♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' e' af'>1-"root"
    <e' af' df''>1-"1st"
    <af' df'' e''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "D♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' f' af' c'>1-"root"
    <f' af' c' df'' >1-"1st"
    <af' c' df'' f''>1-"2nd"
    <c' df'' f'' af''>1-"3rd"
  }
}

\markup { "D♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' e' af' b'>1-"root"
    <e' af' b' df'' >1-"1st"
    <af' b' df'' e''>1-"2nd"
    <b' df'' e'' af''>1-"3rd"
  }
}

\markup { "D♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' f' af' b'>1-"root"
    <f' af' b' df'' >1-"1st"
    <af' b' df'' f''>1-"2nd"
    <b' df'' f'' af''>1-"3rd"
  }
}

\markup { "D♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <df' e' g' bf'>1-"root"
    <e' g' bf' df'' >1-"1st"
    <g' bf' df'' e''>1-"2nd"
    <bf' df'' e'' g''>1-"3rd"
  }
}