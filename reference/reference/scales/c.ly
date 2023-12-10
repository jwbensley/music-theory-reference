\version "2.18.2"
\language "english"

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
    c'4-"c"
    d'-"d"
    e'-"e"
    f'-"f"
    g'-"g"
    a'-"a"
    b'-"b"
    c''-"c" |
    c''-"c"
    b'-"b"
    a'-"a"
    g'-"g"
    f'-"f"
    e'-"e"
    d'-"d"
    c'-"c"
  }
}

\markup { "C Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    eflat'-"♭e"
    f'-"f"
    g'-"g"
    aflat'-"♭a"
    bflat'-"♭b"
    c''-"c" |
    c''-"c"
    bflat'-"♭b"
    aflat'-"♭a"
    g'-"g"
    f'-"f"
    eflat'-"♭e"
    d'-"d"
    c'-"c"
  }
}

\markup { "C Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    eflat'-"♭e"
    f'-"f"
    g'-"g"
    aflat'-"♭a"
    b'-"b"
    c''-"c" |
    c''-"c"
    b'-"b"
    aflat'-"♭a"
    g'-"g"
    f'-"f"
    eflat'-"♭e"
    d'-"d"
    c'-"c"
  }
}

\markup { "C Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    eflat'-"♭e"
    f'-"f"
    g'-"g"
    a'-"a"
    b'-"b"
    c''-"c" |
    c''-"c"
    b'-"b"
    a'-"a"
    g'-"g"
    f'-"f"
    eflat'-"♭e"
    d'-"d"
    c'-"c"
  }
}

\markup { "C Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    eflat'-"♭e"
    f'-"f"
    g'-"g"
    aflat'-"♭a"
    bflat'-"♭b"
    c''-"c" |
    c''-"c"
    bflat'-"♭b"
    aflat'-"♭a"
    g'-"g"
    f'-"f"
    eflat'-"♭e"
    d'-"d"
    c'-"c"
  }
}

\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    eflat'-"♭e"
    e'-"e"
    g'-"g"
    a'-"a"
    c''-"c" r4 |
    c''-"c"
    a'-"a"
    g'-"g"
    e'-"e"
    eflat'-"♭e"
    d'-"d"
    c'-"c" r4
  }
}

\markup { "C Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    eflat'-"♭e"
    f'-"f"
    gflat'-"♭g"
    g'-"g"
    bflat'-"♭b"
    c''-"c" r4 |
    c''-"c"
    bflat'-"♭b"
    g'-"g"
    gflat'-"♭g"
    f'-"f"
    eflat'-"♭e"
    c'-"c" r4
  }
}


\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    e'-"e"
    g'-"g"
    a'-"a"
    c''-"c" r2 |
    c''4-"c"
    a'-"a"
    g'-"g"
    e'-"e"
    d'-"d"
    c'-"c" r2
  }
}

\markup { "C \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    f'-"f"
    g'-"g"
    bflat'-"♭b"
    c''-"c" r2 |
    c''4-"c"
    bflat'-"♭b"
    g'-"g"
    f'-"f"
    d'-"d"
    c'-"c" r2
  }
}

\markup { "C \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    eflat'-"♭e"
    f'-"f"
    aflat'-"♭a"
    bflat'-"♭b"
    c''-"c" r2 |
    c''4-"c"
    bflat'-"♭b"
    aflat'-"♭a"
    f'-"f"
    eflat'-"♭e"
    c'-"c" r2
  }
}

\markup { "C \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    d'-"d"
    f'-"f"
    g'-"g"
    a'-"a"
    c''-"c" r2 |
    c''4-"c"
    a'-"a"
    g'-"g"
    f'-"f"
    d'-"d"
    c'-"c" r2
  }
}

\markup { "C Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    c'4-"c"
    eflat'-"e♭"
    f'-"f"
    g'-"g"
    bflat'-"♭b"
    c''-"c" r2 |
    c''4-"c"
    bflat'-"♭b"
    g'-"g"
    f'-"f"
    eflat'-"♭e"
    c'-"c" r2
  }
}