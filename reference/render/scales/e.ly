\version "2.24.3"
\language "english"

\header {
  title = "E"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        \key e \major
        e4-"e"
        gf-"g♭"
        af-"a♭"
        a-"a"
        b-"b"
        df-"d♭"
        ef-"e♭"
        e-"e" |
        e-"e"
        ef-"e♭"
        df-"d♭"
        b-"b"
        a-"a"
        af-"a♭"
        gf-"g♭"
        e4-"e"
    }
  }
}

\markup { "E Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        \key e \minor
        e4-"e"
        gf-"g♭"
        g-"g"
        a-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e" |
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a-"a"
        g-"g"
        gf-"g♭"
        e4-"e"
    }
  }
}


\markup { "E Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        \key e \minor
        e4-"e"
        gf-"g♭"
        g-"g"
        a-"a"
        b-"b"
        c-"c"
        d-"e♭"
        e-"e" |
        e-"e"
        d-"e♭"
        c-"c"
        b-"b"
        a-"a"
        g-"g"
        gf-"g♭"
        e4-"e"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "E Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        \key e \minor_melodic_asc
        e4-"e"
        gf-"g♭"
        g-"g"
        a-"a"
        b-"b"
        df-"d♭"
        d-"d"
        e-"e" |
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a-"a"
        g-"g"
        gf-"g♭"
        e4-"e"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "E Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        \key e \minor_melodic_des
        e4-"e"
        gf-"g♭"
        g-"g"
        a-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e" |
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a-"a"
        g-"g"
        gf-"g♭"
        e4-"e"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        gf-"g♭"
        g-"g"
        af-"a♭"
        b-"b"
        df-"d♭"
        e-"e"
        r4
        e4-"e"
        df-"d♭"
        b-"b"
        a-"a♭"
        g-"g"
        gf-"g♭"
        e-"e"
    }
  }
}

\markup { "E Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative e' {
        e4-"e"
        g-"g"
        a-"a"
        bf-"b♭"
        b-"b"
        d-"d"
        e-"e"
        r4
        e4-"e"
        d-"d"
        b-"b"
        bf-"b♭"
        a-"a"
        g-"g"
        e-"e"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "E Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        gf-"g♭"
        af-"a♭"
        b-"b"
        df-"d♭"
        e-"e"
        r2 |
        e4-"e"
        df-"d♭"
        b-"b"
        af-"a♭"
        gf-"g♭"
        e-"e"
    }
  }
}

\markup { "E \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        gf-"g♭"
        af-"a♭"
        b-"b"
        df-"d♭"
        e-"e"
        r2 |
        e4-"e"
        df-"d♭"
        b-"b"
        af-"a♭"
        gf-"g♭"
        e-"e"
    }
  }
}

\markup { "E \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        g-"g"
        a-"a"
        c-"c"
        d-"d"
        e-"e"
        r2 |
        e4-"e"
        d-"d"
        c-"c"
        a-"a"
        g-"g"
        e-"e"
    }
  }
}

\markup { "E \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        gf-"g♭"
        a-"a"
        b-"b"
        df-"d♭"
        e-"e"
        r2 |
        e4-"e"
        df-"d♭"
        b-"b"
        a-"a"
        gf-"g♭"
        e-"e"
    }
  }
}

\markup { "E Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative e' {
        e4-"e"
        g-"g"
        a-"a"
        b-"b"
        d-"d"
        e-"e"
        r2 |
        e4-"e"
        d-"d"
        b-"b"
        a-"a"
        g-"g"
        e-"e"
    }
  }
}
