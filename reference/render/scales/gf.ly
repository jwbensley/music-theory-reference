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
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭" |
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf4-"g♭"
    }
  }
}

\markup { "G♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭" |
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf4-"g♭"
    }
  }
}


\markup { "G♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭"
        d-"d"
        e-"f"
        gf-"g♭" |
        gf-"g♭"
        e-"f"
        d-"d"
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf4-"g♭"
    }
  }
}

\markup { "G♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭"
        ef-"e♭"
        e-"f"
        gf-"g♭" |
        gf-"g♭"
        e-"f"
        d-"e♭"
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf4-"g♭"
    }
  }
}

\markup { "G♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭"
        d-"d"
        e-"f"
        gf-"g♭" |
        gf-"g♭"
        e-"f"
        d-"d"
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf4-"g♭"
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
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        a-"a"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        r4
        gf4-"g♭"
        ef-"e♭"
        df-"d♭"
        b-"b♭"
        a-"a"
        af-"a♭"
        gf-"g♭"
    }
  }
}

\markup { "G♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        a-"a"
        b-"b"
        c-"c"
        df-"d♭"
        e-"e"
        gf-"g♭"
        r4
        gf4-"g♭"
        e-"e"
        df-"d♭"
        c-"c"
        b-"b"
        a-"a"
        gf-"g♭"
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
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        r2 |
        gf4-"g♭"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
    }
  }
}

\markup { "G♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        r2 |
        gf4-"g♭"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
    }
  }
}

\markup { "G♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        a-"a"
        b-"b"
        d-"d"
        e-"e"
        gf-"g♭"
        r2 |
        gf4-"g♭"
        e-"e"
        d-"d"
        b-"b"
        a-"a"
        gf-"g♭"
    }
  }
}

\markup { "G♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        af-"a♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        r2 |
        gf4-"g♭"
        ef-"e♭"
        df-"d♭"
        b-"b"
        af-"a♭"
        gf-"g♭"
    }
  }
}

\markup { "G♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative gf' {
        gf4-"g♭"
        a-"a"
        b-"b"
        df-"d♭"
        e-"e"
        gf-"g♭"
        r2 |
        gf4-"g♭"
        e-"e"
        df-"d♭"
        b-"b"
        a-"a"
        gf-"g♭"
    }
  }
}
