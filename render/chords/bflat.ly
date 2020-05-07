\version "2.18.2"
\language "english"

\header {
  title = "B♭"
  composer = "J. W. Bensley"
}\markup { "Triads and Inversions" }
\markup { \vspace #1 }

\markup { "B♭ Major Triads" }
\markup { "root, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' d' f'>1-"root"
    <d' f' bflat''>1-"1st"
    <f' bflat'' d''>1-"2nd"
  }
}

\markup { "B♭ Minor Triads" }
\markup { "root, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' dflat' f'>1-"root"
    <dflat' f' bflat''>1-"1st"
    <f' bflat'' dflat''>1-"2nd"
  }
}\markup { "Seventh Chords and Inversions" }
\markup { \vspace #1 }

\markup { "B♭ Major Sevenths" }
\markup { "root, major third, minor third, major third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' d' f' a'>1-"root"
    <d' f' a' bflat'' >1-"1st"
    <f' a' bflat'' d''>1-"2nd"
    <a' bflat'' d'' f''>1-"3rd"
  }
}

\markup { "B♭ Minor Sevenths" }
\markup { "root, minor third, major third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' dflat' f' aflat'>1-"root"
    <dflat' f' aflat' bflat'' >1-"1st"
    <f' aflat' bflat'' dflat''>1-"2nd"
    <aflat' bflat'' dflat'' f''>1-"3rd"
  }
}

\markup { "B♭ Dominant Sevenths" }
\markup { "root, major third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' d' f' aflat'>1-"root"
    <d' f' aflat' bflat'' >1-"1st"
    <f' aflat' bflat'' d''>1-"2nd"
    <aflat' bflat'' d'' f''>1-"3rd"
  }
}

\markup { "B♭ Diminished Sevenths" }
\markup { "root, minor third, minor third, minor third" }
\score {
  \new PianoStaff {
    \clef "treble"
    <bflat' dflat' e' g'>1-"root"
    <dflat' e' g' bflat'' >1-"1st"
    <e' g' bflat'' dflat''>1-"2nd"
    <g' bflat'' dflat'' e''>1-"3rd"
  }
}