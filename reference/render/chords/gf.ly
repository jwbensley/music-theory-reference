\version "2.24.3"
\language "english"

\header {
  title = "G♭"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "G♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' bf' df'>1-"root"
    <bf' df' gf''>1-"1st"
    <df' gf'' bf''>1-"2nd"
  }
}

\markup { "G♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' a' df'>1-"root"
    <a' df' gf''>1-"1st"
    <df' gf'' a''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "G♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' bf' df' f'>1-"root"
    <bf' df' f' gf'' >1-"1st"
    <df' f' gf'' bf''>1-"2nd"
    <f' gf'' bf'' df''>1-"3rd"
  }
}

\markup { "G♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' a' df' e'>1-"root"
    <a' df' e' gf'' >1-"1st"
    <df' e' gf'' a''>1-"2nd"
    <e' gf'' a'' df''>1-"3rd"
  }
}

\markup { "G♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' bf' df' e'>1-"root"
    <bf' df' e' gf'' >1-"1st"
    <df' e' gf'' bf''>1-"2nd"
    <e' gf'' bf'' df''>1-"3rd"
  }
}

\markup { "G♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gf' a' c' ef'>1-"root"
    <a' c' ef' gf'' >1-"1st"
    <c' ef' gf'' a''>1-"2nd"
    <ef' gf'' a'' c''>1-"3rd"
  }
}