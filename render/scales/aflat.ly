\version "2.18.2"
\language "english"

\header {
  title = "A♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        c-"c"
        dflat-"d♭"
        eflat-"e♭"
        f-"f"
        g-"g"
        aflat-"a♭" |
        aflat-"a♭"
        g-"g"
        f-"f"
        eflat-"e♭"
        dflat-"d♭"
        c-"c"
        bflat-"b♭"
        aflat4-"a♭"
    }
  }
}

\markup { "A♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        e-"e"
        gflat-"g♭"
        aflat-"a♭" |
        aflat-"a♭"
        gflat-"g♭"
        e-"e"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        bflat-"b♭"
        aflat4-"a♭"
    }
  }
}


\markup { "A♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        e-"e"
        gflat-"g"
        aflat-"a♭" |
        aflat-"a♭"
        gflat-"g"
        e-"e"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        bflat-"b♭"
        aflat4-"a♭"
    }
  }
}

\markup { "A♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        f-"f"
        gflat-"g"
        aflat-"a♭" |
        aflat-"a♭"
        gflat-"g"
        e-"f"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        bflat-"b♭"
        aflat4-"a♭"
    }
  }
}

\markup { "A♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        e-"e"
        gflat-"g"
        aflat-"a♭" |
        aflat-"a♭"
        gflat-"g"
        e-"e"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        bflat-"b♭"
        aflat4-"a♭"
    }
  }
}

\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        b-"b"
        c-"c"
        eflat-"e♭"
        f-"f"
        aflat-"a♭"
        r4
        aflat4-"a♭"
        f-"f"
        eflat-"e♭"
        dflat-"c"
        b-"b"
        bflat-"b♭"
        aflat-"a♭"
    }
  }
}

\markup { "A♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        b-"b"
        dflat-"d♭"
        d-"d"
        eflat-"e♭"
        gflat-"g♭"
        aflat-"a♭"
        r4
        aflat4-"a♭"
        gflat-"g♭"
        eflat-"e♭"
        d-"d"
        dflat-"d♭"
        b-"b"
        aflat-"a♭"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        c-"c"
        eflat-"e♭"
        f-"f"
        aflat-"a♭"
        r2 |
        aflat4-"a♭"
        f-"f"
        eflat-"e♭"
        c-"c"
        bflat-"b♭"
        aflat-"a♭"
    }
  }
}

\markup { "A♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        c-"c"
        eflat-"e♭"
        f-"f"
        aflat-"a♭"
        r2 |
        aflat4-"a♭"
        f-"f"
        eflat-"e♭"
        c-"c"
        bflat-"b♭"
        aflat-"a♭"
    }
  }
}

\markup { "A♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        b-"b"
        dflat-"d♭"
        e-"e"
        gflat-"g♭"
        aflat-"a♭"
        r2 |
        aflat4-"a♭"
        gflat-"g♭"
        e-"e"
        dflat-"d♭"
        b-"b"
        aflat-"a♭"
    }
  }
}

\markup { "A♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        bflat-"b♭"
        dflat-"d♭"
        eflat-"e♭"
        f-"f"
        aflat-"a♭"
        r2 |
        aflat4-"a♭"
        f-"f"
        eflat-"e♭"
        dflat-"d♭"
        bflat-"b♭"
        aflat-"a♭"
    }
  }
}

\markup { "A♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative aflat' {
        aflat4-"a♭"
        b-"b"
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        aflat-"a♭"
        r2 |
        aflat4-"a♭"
        gflat-"g♭"
        eflat-"e♭"
        dflat-"d♭"
        b-"b"
        aflat-"a♭"
    }
  }
}
