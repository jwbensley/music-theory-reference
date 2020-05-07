\version "2.18.2"
\language "english"

\header {
  title = "D♭"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "D♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' f' aflat'>1-"root"
    <f' aflat' dflat''>1-"1st"
    <aflat' dflat'' f''>1-"2nd"
  }
}

\markup { "D♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' e' aflat'>1-"root"
    <e' aflat' dflat''>1-"1st"
    <aflat' dflat'' e''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "D♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' f' aflat' c'>1-"root"
    <f' aflat' c' dflat'' >1-"1st"
    <aflat' c' dflat'' f''>1-"2nd"
    <c' dflat'' f'' aflat''>1-"3rd"
  }
}

\markup { "D♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' e' aflat' b'>1-"root"
    <e' aflat' b' dflat'' >1-"1st"
    <aflat' b' dflat'' e''>1-"2nd"
    <b' dflat'' e'' aflat''>1-"3rd"
  }
}

\markup { "D♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' f' aflat' b'>1-"root"
    <f' aflat' b' dflat'' >1-"1st"
    <aflat' b' dflat'' f''>1-"2nd"
    <b' dflat'' f'' aflat''>1-"3rd"
  }
}

\markup { "D♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <dflat' e' g' bflat'>1-"root"
    <e' g' bflat' dflat'' >1-"1st"
    <g' bflat' dflat'' e''>1-"2nd"
    <bflat' dflat'' e'' g''>1-"3rd"
  }
}