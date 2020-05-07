\version "2.18.2"
\language "english"

\header {
  title = "E♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    g'-"g"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    e''-"e" |
    e''-"e"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    g'-"g"
    f'-"f"
    eflat'4-"e♭"
  }
}

\markup { "E♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    b'-"b"
    dflat'-"d♭"
    e''-"e" |
    e''-"e"
    dflat'-"d♭"
    b'-"b"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'4-"e♭"
  }
}


\markup { "E♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    b'-"b"
    dflat'-"d"
    e''-"e" |
    e''-"e"
    dflat'-"d"
    b'-"b"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'4-"e♭"
  }
}

\markup { "E♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    dflat'-"d"
    e''-"e" |
    e''-"e"
    dflat'-"d"
    b'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'4-"e♭"
  }
}

\markup { "E♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    b'-"b"
    dflat'-"d"
    e''-"e" |
    e''-"e"
    dflat'-"d"
    b'-"b"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'4-"e♭"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    gflat'-"g♭"
    g'-"g"
    bflat'-"b♭"
    c'-"c"
    e''-"e" 
    r1 |
    e''4-"e"
    c'-"c"
    bflat'-"b♭"
    aflat'-"g"
    gflat'-"g♭"
    f'-"f"
    eflat'-"e♭"
  }
}

\markup { "E♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    gflat'-"g♭"
    aflat'-"a♭"
    a'-"a"
    bflat'-"b♭"
    dflat'-"d♭"
    e''-"e"
    r1 |
    e''4-"e"
    dflat'-"d♭"
    bflat'-"b♭"
    a'-"a"
    aflat'-"a♭"
    gflat'-"g♭"
    eflat'-"e♭"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    g'-"g"
    bflat'-"b♭"
    c'-"c"
    e''-"e"
    r2 |
    e''4-"e"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    f'-"f"
    eflat'-"e♭"
    r2
  }
}

\markup { "E♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    g'-"g"
    bflat'-"b♭"
    c'-"c"
    e''-"e"
    r2 |
    e''4-"e"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    f'-"f"
    eflat'-"e♭"
    r2
  }
}

\markup { "E♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    gflat'-"g♭"
    aflat'-"a♭"
    b'-"b"
    dflat'-"d♭"
    e''4-"e"
    r2 |
    e''4-"e"
    dflat'-"d♭"
    b'-"b"
    aflat'-"a♭"
    gflat'-"g♭"
    eflat'-"e♭"
    r2
  }
}

\markup { "E♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    f'-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    e''-"e"
    r2 |
    e''4-"e"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
    eflat'-"e♭"
    r2
  }
}

\markup { "E♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    eflat'4-"e♭"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat'-"d♭"
    e''-"e"
    r2 |
    e''4-"e"
    dflat'-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    eflat'-"e♭"
    r2
  }
}