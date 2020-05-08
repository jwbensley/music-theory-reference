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
    <eflat' g' bflat'>1-"root"
    <g' bflat' eflat''>1-"1st"
    <bflat' eflat'' g''>1-"2nd"
  }
}

\markup { "E♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <eflat' gflat' bflat'>1-"root"
    <gflat' bflat' eflat''>1-"1st"
    <bflat' eflat'' gflat''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "E♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <eflat' g' bflat' d'>1-"root"
    <g' bflat' d' eflat'' >1-"1st"
    <bflat' d' eflat'' g''>1-"2nd"
    <d' eflat'' g'' bflat''>1-"3rd"
  }
}

\markup { "E♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <eflat' gflat' bflat' dflat'>1-"root"
    <gflat' bflat' dflat' eflat'' >1-"1st"
    <bflat' dflat' eflat'' gflat''>1-"2nd"
    <dflat' eflat'' gflat'' bflat''>1-"3rd"
  }
}

\markup { "E♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <eflat' g' bflat' dflat'>1-"root"
    <g' bflat' dflat' eflat'' >1-"1st"
    <bflat' dflat' eflat'' g''>1-"2nd"
    <dflat' eflat'' g'' bflat''>1-"3rd"
  }
}

\markup { "E♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <eflat' gflat' a' c'>1-"root"
    <gflat' a' c' eflat'' >1-"1st"
    <a' c' eflat'' gflat''>1-"2nd"
    <c' eflat'' gflat'' a''>1-"3rd"
  }
}