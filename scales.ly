\version "2.18.2"

\header {
  title = "C"
  composer = "J. W. Bensley"
}

\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" e'-"e" f'-"f"
    g'-"g" a'-"a" b'-"b" c''-"c" |
    c''-"c" b'-"b" a'-"a" g'-"g"
    f'-"f" e'-"e" d'-"d" c'-"c"
  }
}

\markup { "C Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" ees'-"♭e" f'-"f"
    g'-"g" aes'-"♭a" bes'-"♭b" c''-"c" |
    c''-"c" bes'-"♭b" aes'-"♭a" g'-"g"
    f'-"f" ees'-"♭e" d'-"d" c'-"c"
  }
}

\markup { "C Minor Harmonic" }
\markup { "whole, half, whole, whole, half, augmented second, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" ees'-"♭e" f'-"f"
    g'-"g" aes'-"♭a" b'-"b" c''-"c" |
    c''-"c" b'-"b" aes'-"♭a" g'-"g"
    f'-"f" ees'-"♭e" d'-"d" c'-"c"
  }
}

\markup { "C Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" ees'-"♭e" f'-"f"
    g'-"g" a'-"a" b'-"b" c''-"c" |
    c''-"c" b'-"b" a'-"a" g'-"g"
    f'-"f" ees'-"♭e" d'-"d" c'-"c"
  }
}

\markup { "C Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" ees'-"♭e" f'-"f"
    g'-"g" aes'-"♭a" bes'-"♭b" c''-"c" |
    c''-"c" bes'-"♭b" aes'-"♭a" g'-"g"
    f'-"f" ees'-"♭e" d'-"d" c'-"c"
  }
}

\markup { "Hexonic Scales" }
\markup { \vspace #1 }

\markup { "C Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" d'-"d" ees'-"♭e" e'-"e"
    g'-"g" a'-"a" c''-"c" r4 |
    c''-"c" a'-"a" g'-"g" e'-"e"
    ees'-"♭e" d'-"d" c'-"c" r4
  }
}

\markup { "C Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c" ees'-"♭e" f'-"f" ges'-"♭g"
    g'-"g" bes'-"♭b" c''-"c" r4 |
    c''-"c" bes'-"♭b" g'-"g" ges'-"♭g"
    f'-"f" ees'-"♭e" c'-"c" r4
  }
}