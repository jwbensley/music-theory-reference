\version "2.18.2"
\language "english"

\header {
  title = "C"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "C Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' e' g'>1-"root"
    <e' g' c''>1-"1st"
    <g' c'' e''>1-"2nd"
  }
}

\markup { "C Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' eflat' g'>1-"root"
    <eflat' g' c''>1-"1st"
    <g' c'' eflat''>1-"2nd"
  }
}