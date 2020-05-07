\version "2.18.2"
\language "english"

\header {
  title = "D"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "D Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    gflat'-"g♭"
    g'-"g"
    a'-"a"
    b'-"b"
    dflat'-"d♭"
    d''-"d" |
    d''-"d"
    dflat'-"d♭"
    b'-"b"
    a'-"a"
    g'-"g"
    gflat'-"g♭"
    e'-"e"
    d'4-"d"
  }
}

\markup { "D Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    f'-"f"
    g'-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d''-"d" |
    d''-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
    f'-"f"
    e'-"e"
    d'4-"d"
  }
}


\markup { "D Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    f'-"f"
    g'-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"d♭"
    d''-"d" |
    d''-"d"
    c'-"d♭"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
    f'-"f"
    e'-"e"
    d'4-"d"
  }
}

\markup { "D Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    f'-"f"
    g'-"g"
    a'-"a"
    b'-"b"
    c'-"d♭"
    d''-"d" |
    d''-"d"
    c'-"d♭"
    bflat'-"b"
    a'-"a"
    g'-"g"
    f'-"f"
    e'-"e"
    d'4-"d"
  }
}

\markup { "D Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    f'-"f"
    g'-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"d♭"
    d''-"d" |
    d''-"d"
    c'-"d♭"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
    f'-"f"
    e'-"e"
    d'4-"d"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "D Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    f'-"f"
    gflat'-"g♭"
    a'-"a"
    b'-"b"
    d''-"d" 
    r1 |
    d''4-"d"
    b'-"b"
    a'-"a"
    g'-"g♭"
    f'-"f"
    e'-"e"
    d'-"d"
  }
}

\markup { "D Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    f'-"f"
    g'-"g"
    aflat'-"a♭"
    a'-"a"
    c'-"c"
    d''-"d"
    r1 |
    d''4-"d"
    c'-"c"
    a'-"a"
    aflat'-"a♭"
    g'-"g"
    f'-"f"
    d'-"d"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "D Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    gflat'-"g♭"
    a'-"a"
    b'-"b"
    d''-"d"
    r2 |
    d''4-"d"
    b'-"b"
    a'-"a"
    gflat'-"g♭"
    e'-"e"
    d'-"d"
    r2
  }
}

\markup { "D \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    gflat'-"g♭"
    a'-"a"
    b'-"b"
    d''-"d"
    r2 |
    d''4-"d"
    b'-"b"
    a'-"a"
    gflat'-"g♭"
    e'-"e"
    d'-"d"
    r2
  }
}

\markup { "D \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    f'-"f"
    g'-"g"
    bflat'-"b♭"
    c'-"c"
    d''4-"d"
    r2 |
    d''4-"d"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    f'-"f"
    d'-"d"
    r2
  }
}

\markup { "D \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    e'-"e"
    g'-"g"
    a'-"a"
    b'-"b"
    d''-"d"
    r2 |
    d''4-"d"
    b'-"b"
    a'-"a"
    g'-"g"
    e'-"e"
    d'-"d"
    r2
  }
}

\markup { "D Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    d'4-"d"
    f'-"f"
    g'-"g"
    a'-"a"
    c'-"c"
    d''-"d"
    r2 |
    d''4-"d"
    c'-"c"
    a'-"a"
    g'-"g"
    f'-"f"
    d'-"d"
    r2
  }
}