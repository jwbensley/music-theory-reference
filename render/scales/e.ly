\version "2.18.2"
\language "english"

\header {
  title = "E"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    a'-"a"
    b'-"b"
    dflat'-"d♭"
    eflat'-"e♭"
    e''-"e" |
    e''-"e"
    eflat'-"e♭"
    dflat'-"d♭"
    b'-"b"
    a'-"a"
    aflat'-"a♭"
    gflat'-"g♭"
    e'4-"e"
  }
}

\markup { "E Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    g'-"g"
    a'-"a"
    b'-"b"
    c'-"c"
    d'-"d"
    e''-"e" |
    e''-"e"
    d'-"d"
    c'-"c"
    b'-"b"
    a'-"a"
    g'-"g"
    gflat'-"g♭"
    e'4-"e"
  }
}


\markup { "E Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    g'-"g"
    a'-"a"
    b'-"b"
    c'-"c"
    d'-"e♭"
    e''-"e" |
    e''-"e"
    d'-"e♭"
    c'-"c"
    b'-"b"
    a'-"a"
    g'-"g"
    gflat'-"g♭"
    e'4-"e"
  }
}

\markup { "E Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    g'-"g"
    a'-"a"
    b'-"b"
    dflat'-"d♭"
    d'-"e♭"
    e''-"e" |
    e''-"e"
    d'-"e♭"
    c'-"d♭"
    b'-"b"
    a'-"a"
    g'-"g"
    gflat'-"g♭"
    e'4-"e"
  }
}

\markup { "E Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    g'-"g"
    a'-"a"
    b'-"b"
    c'-"c"
    d'-"e♭"
    e''-"e" |
    e''-"e"
    d'-"e♭"
    c'-"c"
    b'-"b"
    a'-"a"
    g'-"g"
    gflat'-"g♭"
    e'4-"e"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    g'-"g"
    aflat'-"a♭"
    b'-"b"
    dflat'-"d♭"
    e''-"e" 
    r1 |
    e''4-"e"
    dflat'-"d♭"
    b'-"b"
    a'-"a♭"
    g'-"g"
    gflat'-"g♭"
    e'-"e"
  }
}

\markup { "E Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    g'-"g"
    a'-"a"
    bflat'-"b♭"
    b'-"b"
    d'-"d"
    e''-"e"
    r1 |
    e''4-"e"
    d'-"d"
    b'-"b"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
    e'-"e"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    b'-"b"
    dflat'-"d♭"
    e''-"e"
    r2 |
    e''4-"e"
    dflat'-"d♭"
    b'-"b"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    r2
  }
}

\markup { "E \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    b'-"b"
    dflat'-"d♭"
    e''-"e"
    r2 |
    e''4-"e"
    dflat'-"d♭"
    b'-"b"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    r2
  }
}

\markup { "E \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    g'-"g"
    a'-"a"
    c'-"c"
    d'-"d"
    e''4-"e"
    r2 |
    e''4-"e"
    d'-"d"
    c'-"c"
    a'-"a"
    g'-"g"
    e'-"e"
    r2
  }
}

\markup { "E \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    gflat'-"g♭"
    a'-"a"
    b'-"b"
    dflat'-"d♭"
    e''-"e"
    r2 |
    e''4-"e"
    dflat'-"d♭"
    b'-"b"
    a'-"a"
    gflat'-"g♭"
    e'-"e"
    r2
  }
}

\markup { "E Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    e'4-"e"
    g'-"g"
    a'-"a"
    b'-"b"
    d'-"d"
    e''-"e"
    r2 |
    e''4-"e"
    d'-"d"
    b'-"b"
    a'-"a"
    g'-"g"
    e'-"e"
    r2
  }
}