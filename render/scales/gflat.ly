\version "2.18.2"
\language "english"

\header {
  title = "G♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "G♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        bflat-"b♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        f-"f"
        gflat-"g♭" |
        gflat-"g♭"
        f-"f"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        bflat-"b♭"
        aflat-"a♭"
        gflat4-"g♭"
    }
  }
}

\markup { "G♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        a-"a"
        b-"b"
        dflat-"d♭"
        d-"d"
        e-"e"
        gflat-"g♭" |
        gflat-"g♭"
        e-"e"
        d-"d"
        dflat-"d♭"
        b-"b"
        a-"a"
        aflat-"a♭"
        gflat4-"g♭"
    }
  }
}


\markup { "G♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        a-"a"
        b-"b"
        dflat-"d♭"
        d-"d"
        e-"f"
        gflat-"g♭" |
        gflat-"g♭"
        e-"f"
        d-"d"
        dflat-"d♭"
        b-"b"
        a-"a"
        aflat-"a♭"
        gflat4-"g♭"
    }
  }
}

\markup { "G♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        a-"a"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        e-"f"
        gflat-"g♭" |
        gflat-"g♭"
        e-"f"
        d-"e♭"
        dflat-"d♭"
        b-"b"
        a-"a"
        aflat-"a♭"
        gflat4-"g♭"
    }
  }
}

\markup { "G♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        a-"a"
        b-"b"
        dflat-"d♭"
        d-"d"
        e-"f"
        gflat-"g♭" |
        gflat-"g♭"
        e-"f"
        d-"d"
        dflat-"d♭"
        b-"b"
        a-"a"
        aflat-"a♭"
        gflat4-"g♭"
    }
  }
}

\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "G♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        a-"a"
        bflat-"b♭"
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        r4
        gflat4-"g♭"
        eflat-"e♭"
        dflat-"d♭"
        b-"b♭"
        a-"a"
        aflat-"a♭"
        gflat-"g♭"
    }
  }
}

\markup { "G♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        a-"a"
        b-"b"
        c-"c"
        dflat-"d♭"
        e-"e"
        gflat-"g♭"
        r4
        gflat4-"g♭"
        e-"e"
        dflat-"d♭"
        c-"c"
        b-"b"
        a-"a"
        gflat-"g♭"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "G♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        bflat-"b♭"
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        r2 |
        gflat4-"g♭"
        eflat-"e♭"
        dflat-"d♭"
        bflat-"b♭"
        aflat-"a♭"
        gflat-"g♭"
    }
  }
}

\markup { "G♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        bflat-"b♭"
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        r2 |
        gflat4-"g♭"
        eflat-"e♭"
        dflat-"d♭"
        bflat-"b♭"
        aflat-"a♭"
        gflat-"g♭"
    }
  }
}

\markup { "G♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        a-"a"
        b-"b"
        d-"d"
        e-"e"
        gflat-"g♭"
        r2 |
        gflat4-"g♭"
        e-"e"
        d-"d"
        b-"b"
        a-"a"
        gflat-"g♭"
    }
  }
}

\markup { "G♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        aflat-"a♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        r2 |
        gflat4-"g♭"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        aflat-"a♭"
        gflat-"g♭"
    }
  }
}

\markup { "G♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gflat' {
        gflat4-"g♭"
        a-"a"
        b-"b"
        dflat-"d♭"
        e-"e"
        gflat-"g♭"
        r2 |
        gflat4-"g♭"
        e-"e"
        dflat-"d♭"
        b-"b"
        a-"a"
        gflat-"g♭"
    }
  }
}
