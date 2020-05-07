\version "2.18.2"
\language "english"

\header {
  title = "G"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
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
    <g' bflat' d'>1-"root"
    <bflat' d' g''>1-"1st"
    <d' g'' bflat''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "G Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' b' d' gflat'>1-"root"
    <b' d' gflat' g'' >1-"1st"
    <d' gflat' g'' b''>1-"2nd"
    <gflat' g'' b'' d''>1-"3rd"
  }
}

\markup { "G Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <g' bflat' d' f'>1-"root"
    <bflat' d' f' g'' >1-"1st"
    <d' f' g'' bflat''>1-"2nd"
    <f' g'' bflat'' d''>1-"3rd"
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
    <g' bflat' dflat' e'>1-"root"
    <bflat' dflat' e' g'' >1-"1st"
    <dflat' e' g'' bflat''>1-"2nd"
    <e' g'' bflat'' dflat''>1-"3rd"
  }
}