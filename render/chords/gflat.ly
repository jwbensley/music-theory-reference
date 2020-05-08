\version "2.18.2"
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
    <gflat' bflat' dflat'>1-"root"
    <bflat' dflat' gflat''>1-"1st"
    <dflat' gflat'' bflat''>1-"2nd"
  }
}

\markup { "G♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gflat' a' dflat'>1-"root"
    <a' dflat' gflat''>1-"1st"
    <dflat' gflat'' a''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "G♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gflat' bflat' dflat' f'>1-"root"
    <bflat' dflat' f' gflat'' >1-"1st"
    <dflat' f' gflat'' bflat''>1-"2nd"
    <f' gflat'' bflat'' dflat''>1-"3rd"
  }
}

\markup { "G♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gflat' a' dflat' e'>1-"root"
    <a' dflat' e' gflat'' >1-"1st"
    <dflat' e' gflat'' a''>1-"2nd"
    <e' gflat'' a'' dflat''>1-"3rd"
  }
}

\markup { "G♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gflat' bflat' dflat' e'>1-"root"
    <bflat' dflat' e' gflat'' >1-"1st"
    <dflat' e' gflat'' bflat''>1-"2nd"
    <e' gflat'' bflat'' dflat''>1-"3rd"
  }
}

\markup { "G♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <gflat' a' c' eflat'>1-"root"
    <a' c' eflat' gflat'' >1-"1st"
    <c' eflat' gflat'' a''>1-"2nd"
    <eflat' gflat'' a'' c''>1-"3rd"
  }
}