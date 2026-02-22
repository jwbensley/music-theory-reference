\version "2.24.3"
\language "english"

\header {
  title = "A♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        \key af \major
        af4-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f"
        g-"g"
        af-"a♭" |
        af-"a♭"
        g-"g"
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf-"b♭"
        af4-"a♭"
    }
  }
}

\markup { "A♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        \key af \minor
        af4-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭" |
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af4-"a♭"
    }
  }
}


\markup { "A♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        \key af \minor
        af4-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g"
        af-"a♭" |
        af-"a♭"
        gf-"g"
        e-"e"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af4-"a♭"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "A♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        \key af \minor_melodic_asc
        af4-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭" |
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af4-"a♭"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "A♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        \key af \minor_melodic_des
        af4-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭" |
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af4-"a♭"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        bf-"b♭"
        b-"b"
        c-"c"
        ef-"e♭"
        f-"f"
        af-"a♭"
        r4
        af4-"a♭"
        f-"f"
        ef-"e♭"
        df-"c"
        b-"b"
        bf-"b♭"
        af-"a♭"
    }
  }
}

\markup { "A♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative af' {
        af4-"a♭"
        b-"b"
        df-"d♭"
        d-"d"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        r4
        af4-"a♭"
        gf-"g♭"
        ef-"e♭"
        d-"d"
        df-"d♭"
        b-"b"
        af-"a♭"
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
    \relative af' {
        af4-"a♭"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        f-"f"
        af-"a♭"
        r2 |
        af4-"a♭"
        f-"f"
        ef-"e♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
    }
  }
}

\markup { "A♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        f-"f"
        af-"a♭"
        r2 |
        af4-"a♭"
        f-"f"
        ef-"e♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
    }
  }
}

\markup { "A♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        b-"b"
        df-"d♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        r2 |
        af4-"a♭"
        gf-"g♭"
        e-"e"
        df-"d♭"
        b-"b"
        af-"a♭"
    }
  }
}

\markup { "A♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        f-"f"
        af-"a♭"
        r2 |
        af4-"a♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
        af-"a♭"
    }
  }
}

\markup { "A♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        r2 |
        af4-"a♭"
        gf-"g♭"
        ef-"e♭"
        df-"d♭"
        b-"b"
        af-"a♭"
    }
  }
}
