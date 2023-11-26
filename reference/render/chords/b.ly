\version "2.18.2"
\language "english"

\header {
  title = "B"
  composer = "J. W. Bensley"
}

\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "B Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' ef' gf'>1-"root"
    <ef' gf' b''>1-"1st"
    <gf' b'' ef''>1-"2nd"
  }
}

\markup { "B Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' gf'>1-"root"
    <d' gf' b''>1-"1st"
    <gf' b'' d''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "B Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' ef' gf' bf'>1-"root"
    <ef' gf' bf' b'' >1-"1st"
    <gf' bf' b'' ef''>1-"2nd"
    <bf' b'' ef'' gf''>1-"3rd"
  }
}

\markup { "B Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' gf' a'>1-"root"
    <d' gf' a' b'' >1-"1st"
    <gf' a' b'' d''>1-"2nd"
    <a' b'' d'' gf''>1-"3rd"
  }
}

\markup { "B Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' ef' gf' a'>1-"root"
    <ef' gf' a' b'' >1-"1st"
    <gf' a' b'' ef''>1-"2nd"
    <a' b'' ef'' gf''>1-"3rd"
  }
}

\markup { "B Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' f' af'>1-"root"
    <d' f' af' b'' >1-"1st"
    <f' af' b'' d''>1-"2nd"
    <af' b'' d'' f''>1-"3rd"
  }
}