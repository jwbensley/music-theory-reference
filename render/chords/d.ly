\version "2.18.2"
\language "english"

\header {
  title = "D"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "D Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' gflat' a'>1-"root"
    <gflat' a' d''>1-"1st"
    <a' d'' gflat''>1-"2nd"
  }
}

\markup { "D Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' f' a'>1-"root"
    <f' a' d''>1-"1st"
    <a' d'' f''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "D Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' gflat' a' dflat'>1-"root"
    <gflat' a' dflat' d'' >1-"1st"
    <a' dflat' d'' gflat''>1-"2nd"
    <dflat' d'' gflat'' a''>1-"3rd"
  }
}

\markup { "D Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' f' a' c'>1-"root"
    <f' a' c' d'' >1-"1st"
    <a' c' d'' f''>1-"2nd"
    <c' d'' f'' a''>1-"3rd"
  }
}

\markup { "D Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' gflat' a' c'>1-"root"
    <gflat' a' c' d'' >1-"1st"
    <a' c' d'' gflat''>1-"2nd"
    <c' d'' gflat'' a''>1-"3rd"
  }
}

\markup { "D Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' f' aflat' b'>1-"root"
    <f' aflat' b' d'' >1-"1st"
    <aflat' b' d'' f''>1-"2nd"
    <b' d'' f'' aflat''>1-"3rd"
  }
}