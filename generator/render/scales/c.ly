\version "2.24.3"
\language "english"

\header {
  title = "C"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        \key c \major
        c4-"c"
        d-"d"
        e-"e"
        f-"f"
        g-"g"
        a-"a"
        b-"b"
        c-"c" |
        c-"c"
        b-"b"
        a-"a"
        g-"g"
        f-"f"
        e-"e"
        d-"d"
        c4-"c"
    }
  }
}

\markup { "C Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        \key c \minor
        c4-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c" |
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c4-"c"
    }
  }
}


\markup { "C Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        \key c \minor
        c4-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g"
        af-"a♭"
        bf-"b"
        c-"c" |
        c-"c"
        bf-"b"
        af-"a♭"
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c4-"c"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "C Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        \key c \minor_melodic_asc
        c4-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g"
        a-"a"
        bf-"b♭"
        c-"c" |
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c4-"c"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "C Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        \key c \minor_melodic_des
        c4-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c" |
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c4-"c"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        d-"d"
        ef-"e♭"
        e-"e"
        g-"g"
        a-"a"
        c-"c"
        r4
        c4-"c"
        a-"a"
        g-"g"
        f-"e"
        ef-"e♭"
        d-"d"
        c-"c"
    }
  }
}

\markup { "C Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative c' {
        c4-"c"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        g-"g"
        bf-"b♭"
        c-"c"
        r4
        c4-"c"
        bf-"b♭"
        g-"g"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        c-"c"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "C Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        d-"d"
        e-"e"
        g-"g"
        a-"a"
        c-"c"
        r2 |
        c4-"c"
        a-"a"
        g-"g"
        e-"e"
        d-"d"
        c-"c"
    }
  }
}

\markup { "C \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        d-"d"
        e-"e"
        g-"g"
        a-"a"
        c-"c"
        r2 |
        c4-"c"
        a-"a"
        g-"g"
        e-"e"
        d-"d"
        c-"c"
    }
  }
}

\markup { "C \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        ef-"e♭"
        f-"f"
        af-"a♭"
        bf-"b♭"
        c-"c"
        r2 |
        c4-"c"
        bf-"b♭"
        af-"a♭"
        f-"f"
        ef-"e♭"
        c-"c"
    }
  }
}

\markup { "C \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        d-"d"
        f-"f"
        g-"g"
        a-"a"
        c-"c"
        r2 |
        c4-"c"
        a-"a"
        g-"g"
        f-"f"
        d-"d"
        c-"c"
    }
  }
}

\markup { "C Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative c' {
        c4-"c"
        ef-"e♭"
        f-"f"
        g-"g"
        bf-"b♭"
        c-"c"
        r2 |
        c4-"c"
        bf-"b♭"
        g-"g"
        f-"f"
        ef-"e♭"
        c-"c"
    }
  }
}
