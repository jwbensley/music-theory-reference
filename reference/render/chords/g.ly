\version "2.18.2"
\language "english"

\header {
  title = "G"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "G Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' b' d'>1-"root"
    <b' d' g''>1-"1st"
    <d' g'' b''>1-"2nd"
  }
}

\markup { "G Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' bf' d'>1-"root"
    <bf' d' g''>1-"1st"
    <d' g'' bf''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "G Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' b' d' gf'>1-"root"
    <b' d' gf' g'' >1-"1st"
    <d' gf' g'' b''>1-"2nd"
    <gf' g'' b'' d''>1-"3rd"
  }
}

\markup { "G Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' bf' d' f'>1-"root"
    <bf' d' f' g'' >1-"1st"
    <d' f' g'' bf''>1-"2nd"
    <f' g'' bf'' d''>1-"3rd"
  }
}

\markup { "G Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' b' d' f'>1-"root"
    <b' d' f' g'' >1-"1st"
    <d' f' g'' b''>1-"2nd"
    <f' g'' b'' d''>1-"3rd"
  }
}

\markup { "G Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' bf' df' e'>1-"root"
    <bf' df' e' g'' >1-"1st"
    <df' e' g'' bf''>1-"2nd"
    <e' g'' bf'' df''>1-"3rd"
  }
}