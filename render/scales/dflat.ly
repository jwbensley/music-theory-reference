\version "2.18.2"
\language "english"

\header {
  title = "D♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    dflat''-"d♭" |
    dflat''-"d♭"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'-"e♭"
    dflat'4-"d♭"
  }
}

\markup { "D♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    e'-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    a'-"a"
    b'-"b"
    dflat''-"d♭" |
    dflat''-"d♭"
    b'-"b"
    a'-"a"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    eflat'-"e♭"
    dflat'4-"d♭"
  }
}


\markup { "D♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    e'-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    a'-"a"
    b'-"c"
    dflat''-"d♭" |
    dflat''-"d♭"
    b'-"c"
    a'-"a"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    eflat'-"e♭"
    dflat'4-"d♭"
  }
}

\markup { "D♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    e'-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    b'-"c"
    dflat''-"d♭" |
    dflat''-"d♭"
    b'-"c"
    a'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    eflat'-"e♭"
    dflat'4-"d♭"
  }
}

\markup { "D♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    e'-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    a'-"a"
    b'-"c"
    dflat''-"d♭" |
    dflat''-"d♭"
    b'-"c"
    a'-"a"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    eflat'-"e♭"
    dflat'4-"d♭"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    e'-"e"
    f'-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat''-"d♭" 
    r1 |
    dflat''4-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"f"
    e'-"e"
    eflat'-"e♭"
    dflat'-"d♭"
  }
}

\markup { "D♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    e'-"e"
    gflat'-"g♭"
    g'-"g"
    aflat'-"a♭"
    b'-"b"
    dflat''-"d♭"
    r1 |
    dflat''4-"d♭"
    b'-"b"
    aflat'-"a♭"
    g'-"g"
    gflat'-"g♭"
    e'-"e"
    dflat'-"d♭"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    f'-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat''-"d♭"
    r2 |
    dflat''4-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    r2
  }
}

\markup { "D♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    f'-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat''-"d♭"
    r2 |
    dflat''4-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    r2
  }
}

\markup { "D♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    e'-"e"
    gflat'-"g♭"
    a'-"a"
    b'-"b"
    dflat''4-"d♭"
    r2 |
    dflat''4-"d♭"
    b'-"b"
    a'-"a"
    gflat'-"g♭"
    e'-"e"
    dflat'-"d♭"
    r2
  }
}

\markup { "D♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    eflat'-"e♭"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat''-"d♭"
    r2 |
    dflat''4-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    eflat'-"e♭"
    dflat'-"d♭"
    r2
  }
}

\markup { "D♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    dflat'4-"d♭"
    e'-"e"
    gflat'-"g♭"
    aflat'-"a♭"
    b'-"b"
    dflat''-"d♭"
    r2 |
    dflat''4-"d♭"
    b'-"b"
    aflat'-"a♭"
    gflat'-"g♭"
    e'-"e"
    dflat'-"d♭"
    r2
  }
}