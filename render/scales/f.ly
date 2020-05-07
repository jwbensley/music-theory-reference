\version "2.18.2"
\language "english"

\header {
  title = "F"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    a'-"a"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    e'-"e"
    f''-"f" |
    f''-"f"
    e'-"e"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    a'-"a"
    g'-"g"
    f'4-"f"
  }
}

\markup { "F Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e♭"
    f''-"f" |
    f''-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    g'-"g"
    f'4-"f"
  }
}


\markup { "F Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e"
    f''-"f" |
    f''-"f"
    eflat'-"e"
    dflat'-"d♭"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    g'-"g"
    f'4-"f"
  }
}

\markup { "F Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    eflat'-"e"
    f''-"f" |
    f''-"f"
    eflat'-"e"
    dflat'-"d"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    g'-"g"
    f'4-"f"
  }
}

\markup { "F Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    dflat'-"d♭"
    eflat'-"e"
    f''-"f" |
    f''-"f"
    eflat'-"e"
    dflat'-"d♭"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    g'-"g"
    f'4-"f"
  }
}\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    aflat'-"a♭"
    a'-"a"
    c'-"c"
    d'-"d"
    f''-"f" 
    r1 |
    f''4-"f"
    d'-"d"
    c'-"c"
    bflat'-"a"
    aflat'-"a♭"
    g'-"g"
    f'-"f"
  }
}

\markup { "F Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    b'-"b"
    c'-"c"
    eflat'-"e♭"
    f''-"f"
    r1 |
    f''4-"f"
    eflat'-"e♭"
    c'-"c"
    b'-"b"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
  }
}\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    a'-"a"
    c'-"c"
    d'-"d"
    f''-"f"
    r2 |
    f''4-"f"
    d'-"d"
    c'-"c"
    a'-"a"
    g'-"g"
    f'-"f"
    r2
  }
}

\markup { "F \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    a'-"a"
    c'-"c"
    d'-"d"
    f''-"f"
    r2 |
    f''4-"f"
    d'-"d"
    c'-"c"
    a'-"a"
    g'-"g"
    f'-"f"
    r2
  }
}

\markup { "F \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    dflat'-"d♭"
    eflat'-"e♭"
    f''4-"f"
    r2 |
    f''4-"f"
    eflat'-"e♭"
    dflat'-"d♭"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
    r2
  }
}

\markup { "F \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    g'-"g"
    bflat'-"b♭"
    c'-"c"
    d'-"d"
    f''-"f"
    r2 |
    f''4-"f"
    d'-"d"
    c'-"c"
    bflat'-"b♭"
    g'-"g"
    f'-"f"
    r2
  }
}

\markup { "F Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    f'4-"f"
    aflat'-"a♭"
    bflat'-"b♭"
    c'-"c"
    eflat'-"e♭"
    f''-"f"
    r2 |
    f''4-"f"
    eflat'-"e♭"
    c'-"c"
    bflat'-"b♭"
    aflat'-"a♭"
    f'-"f"
    r2
  }
}