\version "2.24.3"
\language "english"

\header {
  title = "B♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        \key bf \major
        bf4-"b♭"
        c-"c"
        d-"d"
        ef-"e♭"
        f-"f"
        g-"g"
        a-"a"
        bf-"b♭" |
        bf-"b♭"
        a-"a"
        g-"g"
        f-"f"
        ef-"e♭"
        d-"d"
        c-"c"
        bf4-"b♭"
    }
  }
}

\markup { "B♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        \key bf \minor
        bf4-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭" |
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf4-"b♭"
    }
  }
}


\markup { "B♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        \key bf \minor
        bf4-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        af-"a"
        bf-"b♭" |
        bf-"b♭"
        af-"a"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf4-"b♭"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "B♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        \key bf \minor_melodic_asc
        bf4-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f"
        g-"g"
        af-"a♭"
        bf-"b♭" |
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf4-"b♭"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "B♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        \key bf \minor_melodic_des
        bf4-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭" |
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf4-"b♭"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        c-"c"
        df-"d♭"
        d-"d"
        f-"f"
        g-"g"
        bf-"b♭"
        r4
        bf4-"b♭"
        g-"g"
        f-"f"
        ef-"d"
        df-"d♭"
        c-"c"
        bf-"b♭"
    }
  }
}

\markup { "B♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        df-"d♭"
        ef-"e♭"
        e-"e"
        f-"f"
        af-"a♭"
        bf-"b♭"
        r4
        bf4-"b♭"
        af-"a♭"
        f-"f"
        e-"e"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "B♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        c-"c"
        d-"d"
        f-"f"
        g-"g"
        bf-"b♭"
        r2 |
        bf4-"b♭"
        g-"g"
        f-"f"
        d-"d"
        c-"c"
        bf-"b♭"
    }
  }
}

\markup { "B♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        c-"c"
        d-"d"
        f-"f"
        g-"g"
        bf-"b♭"
        r2 |
        bf4-"b♭"
        g-"g"
        f-"f"
        d-"d"
        c-"c"
        bf-"b♭"
    }
  }
}

\markup { "B♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        r2 |
        bf4-"b♭"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
    }
  }
}

\markup { "B♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        c-"c"
        ef-"e♭"
        f-"f"
        g-"g"
        bf-"b♭"
        r2 |
        bf4-"b♭"
        g-"g"
        f-"f"
        ef-"e♭"
        c-"c"
        bf-"b♭"
    }
  }
}

\markup { "B♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative bf' {
        bf4-"b♭"
        df-"d♭"
        ef-"e♭"
        f-"f"
        af-"a♭"
        bf-"b♭"
        r2 |
        bf4-"b♭"
        af-"a♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
    }
  }
}
