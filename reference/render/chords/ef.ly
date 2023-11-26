\version "2.18.2"
\language "english"

\header {
  title = "E♭"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "E♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' g' bf'>1-"root"
    <g' bf' ef''>1-"1st"
    <bf' ef'' g''>1-"2nd"
  }
}

\markup { "E♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' gf' bf'>1-"root"
    <gf' bf' ef''>1-"1st"
    <bf' ef'' gf''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "E♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' g' bf' d'>1-"root"
    <g' bf' d' ef'' >1-"1st"
    <bf' d' ef'' g''>1-"2nd"
    <d' ef'' g'' bf''>1-"3rd"
  }
}

\markup { "E♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' gf' bf' df'>1-"root"
    <gf' bf' df' ef'' >1-"1st"
    <bf' df' ef'' gf''>1-"2nd"
    <df' ef'' gf'' bf''>1-"3rd"
  }
}

\markup { "E♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' g' bf' df'>1-"root"
    <g' bf' df' ef'' >1-"1st"
    <bf' df' ef'' g''>1-"2nd"
    <df' ef'' g'' bf''>1-"3rd"
  }
}

\markup { "E♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <ef' gf' a' c'>1-"root"
    <gf' a' c' ef'' >1-"1st"
    <a' c' ef'' gf''>1-"2nd"
    <c' ef'' gf'' a''>1-"3rd"
  }
}