\version "2.24.3"
\language "english"

\header {
  title = "D♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        \key df \major
        df4-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭" |
        df-"d♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef-"e♭"
        df4-"d♭"
    }
  }
}

\markup { "D♭ Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        \key df \minor
        df4-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭" |
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df4-"d♭"
    }
  }
}


\markup { "D♭ Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        \key df \minor
        df4-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        a-"a"
        b-"c"
        df-"d♭" |
        df-"d♭"
        b-"c"
        a-"a"
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df4-"d♭"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "D♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        \key df \minor_melodic_asc
        df4-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭" |
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df4-"d♭"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "D♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        \key df \minor_melodic_des
        df4-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭" |
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df4-"d♭"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        ef-"e♭"
        e-"e"
        f-"f"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        r4
        df4-"d♭"
        bf-"b♭"
        af-"a♭"
        gf-"f"
        e-"e"
        ef-"e♭"
        df-"d♭"
    }
  }
}

\markup { "D♭ Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative df' {
        df4-"d♭"
        e-"e"
        gf-"g♭"
        g-"g"
        af-"a♭"
        b-"b"
        df-"d♭"
        r4
        df4-"d♭"
        b-"b"
        af-"a♭"
        g-"g"
        gf-"g♭"
        e-"e"
        df-"d♭"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "D♭ Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        ef-"e♭"
        f-"f"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        r2 |
        df4-"d♭"
        bf-"b♭"
        af-"a♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
    }
  }
}

\markup { "D♭ \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        ef-"e♭"
        f-"f"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        r2 |
        df4-"d♭"
        bf-"b♭"
        af-"a♭"
        f-"f"
        ef-"e♭"
        df-"d♭"
    }
  }
}

\markup { "D♭ \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        e-"e"
        gf-"g♭"
        a-"a"
        b-"b"
        df-"d♭"
        r2 |
        df4-"d♭"
        b-"b"
        a-"a"
        gf-"g♭"
        e-"e"
        df-"d♭"
    }
  }
}

\markup { "D♭ \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        r2 |
        df4-"d♭"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
        df-"d♭"
    }
  }
}

\markup { "D♭ Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative df' {
        df4-"d♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        b-"b"
        df-"d♭"
        r2 |
        df4-"d♭"
        b-"b"
        af-"a♭"
        gf-"g♭"
        e-"e"
        df-"d♭"
    }
  }
}
