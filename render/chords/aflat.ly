\version "2.18.2"
\language "english"

\header {
  title = "A♭"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "A♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' c' eflat'>1-"root"
    <c' eflat' aflat''>1-"1st"
    <eflat' aflat'' c''>1-"2nd"
  }
}

\markup { "A♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' b' eflat'>1-"root"
    <b' eflat' aflat''>1-"1st"
    <eflat' aflat'' b''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "A♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' c' eflat' g'>1-"root"
    <c' eflat' g' aflat'' >1-"1st"
    <eflat' g' aflat'' c''>1-"2nd"
    <g' aflat'' c'' eflat''>1-"3rd"
  }
}

\markup { "A♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' b' eflat' gflat'>1-"root"
    <b' eflat' gflat' aflat'' >1-"1st"
    <eflat' gflat' aflat'' b''>1-"2nd"
    <gflat' aflat'' b'' eflat''>1-"3rd"
  }
}

\markup { "A♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' c' eflat' gflat'>1-"root"
    <c' eflat' gflat' aflat'' >1-"1st"
    <eflat' gflat' aflat'' c''>1-"2nd"
    <gflat' aflat'' c'' eflat''>1-"3rd"
  }
}

\markup { "A♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <aflat' b' d' f'>1-"root"
    <b' d' f' aflat'' >1-"1st"
    <d' f' aflat'' b''>1-"2nd"
    <f' aflat'' b'' d''>1-"3rd"
  }
}