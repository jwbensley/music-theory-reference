\version "2.18.2"
\language "english"

\header {
  title = "A"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "A Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' df' e'>1-"root"
    <df' e' a''>1-"1st"
    <e' a'' df''>1-"2nd"
  }
}

\markup { "A Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' c' e'>1-"root"
    <c' e' a''>1-"1st"
    <e' a'' c''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "A Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' df' e' af'>1-"root"
    <df' e' af' a'' >1-"1st"
    <e' af' a'' df''>1-"2nd"
    <af' a'' df'' e''>1-"3rd"
  }
}

\markup { "A Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' c' e' g'>1-"root"
    <c' e' g' a'' >1-"1st"
    <e' g' a'' c''>1-"2nd"
    <g' a'' c'' e''>1-"3rd"
  }
}

\markup { "A Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' df' e' g'>1-"root"
    <df' e' g' a'' >1-"1st"
    <e' g' a'' df''>1-"2nd"
    <g' a'' df'' e''>1-"3rd"
  }
}

\markup { "A Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' c' ef' gf'>1-"root"
    <c' ef' gf' a'' >1-"1st"
    <ef' gf' a'' c''>1-"2nd"
    <gf' a'' c'' ef''>1-"3rd"
  }
}