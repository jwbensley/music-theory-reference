\version "2.18.2"
\language "english"

\header {
  title = "B"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "B Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' eflat' gflat'>1-"root"
    <eflat' gflat' b''>1-"1st"
    <gflat' b'' eflat''>1-"2nd"
  }
}

\markup { "B Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' gflat'>1-"root"
    <d' gflat' b''>1-"1st"
    <gflat' b'' d''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "B Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' eflat' gflat' bflat'>1-"root"
    <eflat' gflat' bflat' b'' >1-"1st"
    <gflat' bflat' b'' eflat''>1-"2nd"
    <bflat' b'' eflat'' gflat''>1-"3rd"
  }
}

\markup { "B Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' gflat' a'>1-"root"
    <d' gflat' a' b'' >1-"1st"
    <gflat' a' b'' d''>1-"2nd"
    <a' b'' d'' gflat''>1-"3rd"
  }
}

\markup { "B Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' eflat' gflat' a'>1-"root"
    <eflat' gflat' a' b'' >1-"1st"
    <gflat' a' b'' eflat''>1-"2nd"
    <a' b'' eflat'' gflat''>1-"3rd"
  }
}

\markup { "B Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <b' d' f' aflat'>1-"root"
    <d' f' aflat' b'' >1-"1st"
    <f' aflat' b'' d''>1-"2nd"
    <aflat' b'' d'' f''>1-"3rd"
  }
}