\version "2.18.2"
\language "english"

\header {
  title = "D"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "D Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' gf' a'>1-"root"
    <gf' a' d''>1-"1st"
    <a' d'' gf''>1-"2nd"
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
    <d' gf' a' df'>1-"root"
    <gf' a' df' d'' >1-"1st"
    <a' df' d'' gf''>1-"2nd"
    <df' d'' gf'' a''>1-"3rd"
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
    <d' gf' a' c'>1-"root"
    <gf' a' c' d'' >1-"1st"
    <a' c' d'' gf''>1-"2nd"
    <c' d'' gf'' a''>1-"3rd"
  }
}

\markup { "D Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <d' f' af' b'>1-"root"
    <f' af' b' d'' >1-"1st"
    <af' b' d'' f''>1-"2nd"
    <b' d'' f'' af''>1-"3rd"
  }
}