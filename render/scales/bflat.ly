\version "2.18.2"
\language "english"

\header {
  title = "B♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    d'-"d"
    eflat'-"e♭"
    f'-"f"
    g'-"g"
    a'-"a"
    bflat''-"b♭" |
    bflat''-"b♭"
    a'-"a"
    g'-"g"
    f'-"f"
    eflat'-"e♭"
    d'-"d"
    c'-"c"
    bflat'4-"b♭"
  }
}

\markup { "B♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat''-"b♭" |
    bflat''-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    c'-"c"
    bflat'4-"b♭"
  }
}


\markup { "B♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a"
    bflat''-"b♭" |
    bflat''-"b♭"
    aflat'-"a"
    gflat'-"g♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    c'-"c"
    bflat'4-"b♭"
  }
}

\markup { "B♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e♭"
    f'-"f"
    g'-"g"
    aflat'-"a"
    bflat''-"b♭" |
    bflat''-"b♭"
    aflat'-"a"
    gflat'-"g"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    c'-"c"
    bflat'4-"b♭"
  }
}

\markup { "B♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e♭"
    f'-"f"
    gflat'-"g♭"
    aflat'-"a"
    bflat''-"b♭" |
    bflat''-"b♭"
    aflat'-"a"
    gflat'-"g♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    c'-"c"
    bflat'4-"b♭"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    dflat'-"d♭"
    d'-"d"
    f'-"f"
    g'-"g"
    bflat''-"b♭" 
    r1 |
    bflat''4-"b♭"
    g'-"g"
    f'-"f"
    eflat'-"d"
    dflat'-"d♭"
    c'-"c"
    bflat'-"b♭"
  }
}

\markup { "B♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    dflat'-"d♭"
    eflat'-"e♭"
    e'-"e"
    f'-"f"
    aflat'-"a♭"
    bflat''-"b♭"
    r1 |
    bflat''4-"b♭"
    aflat'-"a♭"
    f'-"f"
    e'-"e"
    eflat'-"e♭"
    dflat'-"d♭"
    bflat'-"b♭"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    d'-"d"
    f'-"f"
    g'-"g"
    bflat''-"b♭"
    r2 |
    bflat''4-"b♭"
    g'-"g"
    f'-"f"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    r2
  }
}

\markup { "B♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    d'-"d"
    f'-"f"
    g'-"g"
    bflat''-"b♭"
    r2 |
    bflat''4-"b♭"
    g'-"g"
    f'-"f"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    r2
  }
}

\markup { "B♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    dflat'-"d♭"
    eflat'-"e♭"
    gflat'-"g♭"
    aflat'-"a♭"
    bflat''4-"b♭"
    r2 |
    bflat''4-"b♭"
    aflat'-"a♭"
    gflat'-"g♭"
    eflat'-"e♭"
    dflat'-"d♭"
    bflat'-"b♭"
    r2
  }
}

\markup { "B♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    c'-"c"
    eflat'-"e♭"
    f'-"f"
    g'-"g"
    bflat''-"b♭"
    r2 |
    bflat''4-"b♭"
    g'-"g"
    f'-"f"
    eflat'-"e♭"
    c'-"c"
    bflat'-"b♭"
    r2
  }
}

\markup { "B♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    bflat'4-"b♭"
    dflat'-"d♭"
    eflat'-"e♭"
    f'-"f"
    aflat'-"a♭"
    bflat''-"b♭"
    r2 |
    bflat''4-"b♭"
    aflat'-"a♭"
    f'-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    bflat'-"b♭"
    r2
  }
}