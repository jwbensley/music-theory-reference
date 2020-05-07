\version "2.18.2"
\language "english"

\header {
  title = "G"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    b'-"b"
    c'-"c"
    d'-"d"
    e'-"e"
    gflat'-"g♭"
    g''-"g" |
    g''-"g"
    gflat'-"g♭"
    e'-"e"
    d'-"d"
    c'-"c"
    b'-"b"
    a'-"a"
    g'4-"g"
  }
}

\markup { "G Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    eflat'-"e♭"
    f'-"f"
    g''-"g" |
    g''-"g"
    f'-"f"
    eflat'-"e♭"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'4-"g"
  }
}


\markup { "G Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    eflat'-"e♭"
    f'-"g♭"
    g''-"g" |
    g''-"g"
    f'-"g♭"
    eflat'-"e♭"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'4-"g"
  }
}

\markup { "G Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    e'-"e"
    f'-"g♭"
    g''-"g" |
    g''-"g"
    f'-"g♭"
    eflat'-"e"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'4-"g"
  }
}

\markup { "G Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    eflat'-"e♭"
    f'-"g♭"
    g''-"g" |
    g''-"g"
    f'-"g♭"
    eflat'-"e♭"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'4-"g"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    bflat'-"b♭"
    b'-"b"
    d'-"d"
    e'-"e"
    g''-"g" 
    r1 |
    g''4-"g"
    e'-"e"
    d'-"d"
    c'-"b"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
  }
}

\markup { "G Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    bflat'-"b♭"
    c'-"c"
    dflat'-"d♭"
    d'-"d"
    f'-"f"
    g''-"g"
    r1 |
    g''4-"g"
    f'-"f"
    d'-"d"
    dflat'-"d♭"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    b'-"b"
    d'-"d"
    e'-"e"
    g''-"g"
    r2 |
    g''4-"g"
    e'-"e"
    d'-"d"
    b'-"b"
    a'-"a"
    g'-"g"
    r2
  }
}

\markup { "G \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    b'-"b"
    d'-"d"
    e'-"e"
    g''-"g"
    r2 |
    g''4-"g"
    e'-"e"
    d'-"d"
    b'-"b"
    a'-"a"
    g'-"g"
    r2
  }
}

\markup { "G \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    bflat'-"b♭"
    c'-"c"
    eflat'-"e♭"
    f'-"f"
    g''4-"g"
    r2 |
    g''4-"g"
    f'-"f"
    eflat'-"e♭"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    r2
  }
}

\markup { "G \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    a'-"a"
    c'-"c"
    d'-"d"
    e'-"e"
    g''-"g"
    r2 |
    g''4-"g"
    e'-"e"
    d'-"d"
    c'-"c"
    a'-"a"
    g'-"g"
    r2
  }
}

\markup { "G Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    g'4-"g"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    f'-"f"
    g''-"g"
    r2 |
    g''4-"g"
    f'-"f"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    r2
  }
}