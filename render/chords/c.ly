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
    <c' eflat' g'>1-"root"
    <eflat' g' c''>1-"1st"
    <g' c'' eflat''>1-"2nd"
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
    <c' eflat' g' bflat'>1-"root"
    <eflat' g' bflat' c'' >1-"1st"
    <g' bflat' c'' eflat''>1-"2nd"
    <bflat' c'' eflat'' g''>1-"3rd"
  }
}

\markup { "C Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' e' g' bflat'>1-"root"
    <e' g' bflat' c'' >1-"1st"
    <g' bflat' c'' e''>1-"2nd"
    <bflat' c'' e'' g''>1-"3rd"
  }
}

\markup { "C Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <c' eflat' gflat' a'>1-"root"
    <eflat' gflat' a' c'' >1-"1st"
    <gflat' a' c'' eflat''>1-"2nd"
    <a' c'' eflat'' gflat''>1-"3rd"
  }
}