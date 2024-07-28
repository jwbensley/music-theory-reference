\version "2.24.3"
\language "english"

\header {
  title = "E♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        \key ef \major
        ef4-"e♭"
        f-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c"
        d-"d"
        ef-"e♭" |
        ef-"e♭"
        d-"d"
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f-"f"
        ef4-"e♭"
    }
  }
}

\markup { "E♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        \key ef \minor
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭" |
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef4-"e♭"
    }
  }
}


\markup { "E♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        \key ef \minor
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b"
        df-"d"
        ef-"e♭" |
        ef-"e♭"
        df-"d"
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef4-"e♭"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "E♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        \key ef \minor_melodic_asc
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭" |
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef4-"e♭"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "E♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        \key ef \minor_melodic_des
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭" |
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef4-"e♭"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        g-"g"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        r4
        ef4-"e♭"
        c-"c"
        bf-"b♭"
        af-"g"
        gf-"g♭"
        f-"f"
        ef-"e♭"
    }
  }
}

\markup { "E♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        gf-"g♭"
        af-"a♭"
        a-"a"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        r4
        ef4-"e♭"
        df-"d♭"
        bf-"b♭"
        a-"a"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        f-"f"
        g-"g"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        r2 |
        ef4-"e♭"
        c-"c"
        bf-"b♭"
        g-"g"
        f-"f"
        ef-"e♭"
    }
  }
}

\markup { "E♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        f-"f"
        g-"g"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        r2 |
        ef4-"e♭"
        c-"c"
        bf-"b♭"
        g-"g"
        f-"f"
        ef-"e♭"
    }
  }
}

\markup { "E♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        gf-"g♭"
        af-"a♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        r2 |
        ef4-"e♭"
        df-"d♭"
        b-"b"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
    }
  }
}

\markup { "E♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        f-"f"
        af-"a♭"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        r2 |
        ef4-"e♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        f-"f"
        ef-"e♭"
    }
  }
}

\markup { "E♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        r2 |
        ef4-"e♭"
        df-"d♭"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
    }
  }
}
