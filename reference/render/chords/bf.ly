\version "2.24.3"
\language "english"

\header {
  title = "B♭"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "B♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' d' f'>1-"root"
    <d' f' bf''>1-"1st"
    <f' bf'' d''>1-"2nd"
  }
}

\markup { "B♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' df' f'>1-"root"
    <df' f' bf''>1-"1st"
    <f' bf'' df''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "B♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' d' f' a'>1-"root"
    <d' f' a' bf'' >1-"1st"
    <f' a' bf'' d''>1-"2nd"
    <a' bf'' d'' f''>1-"3rd"
  }
}

\markup { "B♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' df' f' af'>1-"root"
    <df' f' af' bf'' >1-"1st"
    <f' af' bf'' df''>1-"2nd"
    <af' bf'' df'' f''>1-"3rd"
  }
}

\markup { "B♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' d' f' af'>1-"root"
    <d' f' af' bf'' >1-"1st"
    <f' af' bf'' d''>1-"2nd"
    <af' bf'' d'' f''>1-"3rd"
  }
}

\markup { "B♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bf' df' e' g'>1-"root"
    <df' e' g' bf'' >1-"1st"
    <e' g' bf'' df''>1-"2nd"
    <g' bf'' df'' e''>1-"3rd"
  }
}