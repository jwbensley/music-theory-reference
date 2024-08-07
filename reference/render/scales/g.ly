\version "2.24.3"
\language "english"

\header {
  title = "G"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        \key g \major
        g4-"g"
        a-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e"
        gf-"g♭"
        g-"g" |
        g-"g"
        gf-"g♭"
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a-"a"
        g4-"g"
    }
  }
}

\markup { "G Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        \key g \minor
        g4-"g"
        a-"a"
        bf-"b♭"
        c-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g" |
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c-"c"
        bf-"b♭"
        a-"a"
        g4-"g"
    }
  }
}


\markup { "G Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        \key g \minor
        g4-"g"
        a-"a"
        bf-"b♭"
        c-"c"
        d-"d"
        ef-"e♭"
        f-"g♭"
        g-"g" |
        g-"g"
        f-"g♭"
        ef-"e♭"
        d-"d"
        c-"c"
        bf-"b♭"
        a-"a"
        g4-"g"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "G Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        \key g \minor_melodic_asc
        g4-"g"
        a-"a"
        bf-"b♭"
        c-"c"
        d-"d"
        e-"e"
        f-"f"
        g-"g" |
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c-"c"
        bf-"b♭"
        a-"a"
        g4-"g"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "G Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        \key g \minor_melodic_des
        g4-"g"
        a-"a"
        bf-"b♭"
        c-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g" |
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c-"c"
        bf-"b♭"
        a-"a"
        g4-"g"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        a-"a"
        bf-"b♭"
        b-"b"
        d-"d"
        e-"e"
        g-"g"
        r4
        g4-"g"
        e-"e"
        d-"d"
        c-"b"
        bf-"b♭"
        a-"a"
        g-"g"
    }
  }
}

\markup { "G Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative g' {
        g4-"g"
        bf-"b♭"
        c-"c"
        df-"d♭"
        d-"d"
        f-"f"
        g-"g"
        r4
        g4-"g"
        f-"f"
        d-"d"
        df-"d♭"
        c-"c"
        bf-"b♭"
        g-"g"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "G Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        a-"a"
        b-"b"
        d-"d"
        e-"e"
        g-"g"
        r2 |
        g4-"g"
        e-"e"
        d-"d"
        b-"b"
        a-"a"
        g-"g"
    }
  }
}

\markup { "G \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        a-"a"
        b-"b"
        d-"d"
        e-"e"
        g-"g"
        r2 |
        g4-"g"
        e-"e"
        d-"d"
        b-"b"
        a-"a"
        g-"g"
    }
  }
}

\markup { "G \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        f-"f"
        g-"g"
        r2 |
        g4-"g"
        f-"f"
        ef-"e♭"
        c-"c"
        bf-"b♭"
        g-"g"
    }
  }
}

\markup { "G \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        a-"a"
        c-"c"
        d-"d"
        e-"e"
        g-"g"
        r2 |
        g4-"g"
        e-"e"
        d-"d"
        c-"c"
        a-"a"
        g-"g"
    }
  }
}

\markup { "G Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative g' {
        g4-"g"
        bf-"b♭"
        c-"c"
        d-"d"
        f-"f"
        g-"g"
        r2 |
        g4-"g"
        f-"f"
        d-"d"
        c-"c"
        bf-"b♭"
        g-"g"
    }
  }
}
