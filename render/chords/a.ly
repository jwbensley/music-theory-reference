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
    <a' dflat' e'>1-"root"
    <dflat' e' a''>1-"1st"
    <e' a'' dflat''>1-"2nd"
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
    <a' dflat' e' aflat'>1-"root"
    <dflat' e' aflat' a'' >1-"1st"
    <e' aflat' a'' dflat''>1-"2nd"
    <aflat' a'' dflat'' e''>1-"3rd"
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
    <a' dflat' e' g'>1-"root"
    <dflat' e' g' a'' >1-"1st"
    <e' g' a'' dflat''>1-"2nd"
    <g' a'' dflat'' e''>1-"3rd"
  }
}

\markup { "A Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <a' c' eflat' gflat'>1-"root"
    <c' eflat' gflat' a'' >1-"1st"
    <eflat' gflat' a'' c''>1-"2nd"
    <gflat' a'' c'' eflat''>1-"3rd"
  }
}