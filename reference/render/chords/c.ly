\version "2.18.2"
\language "english"

\header {
  title = "C"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
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
    <c' ef' g'>1-"root"
    <ef' g' c''>1-"1st"
    <g' c'' ef''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "C Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' e' g' b'>1-"root"
    <e' g' b' c'' >1-"1st"
    <g' b' c'' e''>1-"2nd"
    <b' c'' e'' g''>1-"3rd"
  }
}

\markup { "C Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' ef' g' bf'>1-"root"
    <ef' g' bf' c'' >1-"1st"
    <g' bf' c'' ef''>1-"2nd"
    <bf' c'' ef'' g''>1-"3rd"
  }
}

\markup { "C Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' e' g' bf'>1-"root"
    <e' g' bf' c'' >1-"1st"
    <g' bf' c'' e''>1-"2nd"
    <bf' c'' e'' g''>1-"3rd"
  }
}

\markup { "C Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' ef' gf' a'>1-"root"
    <ef' gf' a' c'' >1-"1st"
    <gf' a' c'' ef''>1-"2nd"
    <a' c'' ef'' gf''>1-"3rd"
  }
}