\version "2.24.3"
\language "english"

\header {
  title = "A"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "A Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\markup { "M2, M3, P4, P5, M6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        \key a \major
        a4-"a"
        b-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭"
        af-"a♭"
        a-"a" |
        a-"a"
        af-"a♭"
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b-"b"
        a4-"a"
    }
  }
}

\markup { "A Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        \key a \minor
        a4-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e"
        f-"f"
        g-"g"
        a-"a" |
        a-"a"
        g-"g"
        f-"f"
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a4-"a"
    }
  }
}


\markup { "A Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\markup { "M2, m3, P4, P5, m6, M7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        \key a \minor
        a4-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e"
        f-"f"
        g-"a♭"
        a-"a" |
        a-"a"
        g-"a♭"
        f-"f"
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a4-"a"
    }
  }
}

minor_melodic_asc = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,NATURAL) (6 . ,FLAT))
\markup { "A Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, half, whole / whole, whole, half, whole, whole, half, whole" }
\markup { "M2, m3, P4, P5, M6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        \key a \minor_melodic_asc
        a4-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e"
        gf-"g♭"
        g-"g"
        a-"a" |
        a-"a"
        g-"g"
        f-"f"
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a4-"a"
    }
  }
}

minor_melodic_des = #`((0 . ,NATURAL) (1 . ,NATURAL) (2 . ,FLAT) (3 . ,NATURAL) (4 . ,NATURAL) (5 . ,FLAT) (6 . ,FLAT))
\markup { "A Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\markup { "M2, m3, P4, P5, m6, m7, P1 " }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        \key a \minor_melodic_des
        a4-"a"
        b-"b"
        c-"c"
        d-"d"
        e-"e"
        f-"f"
        g-"g"
        a-"a" |
        a-"a"
        g-"g"
        f-"f"
        e-"e"
        d-"d"
        c-"c"
        b-"b"
        a4-"a"
    }
  }
}

\pageBreak\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "A Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        b-"b"
        c-"c"
        df-"d♭"
        e-"e"
        gf-"g♭"
        a-"a"
        r4
        a4-"a"
        gf-"g♭"
        e-"e"
        d-"d♭"
        c-"c"
        b-"b"
        a-"a"
    }
  }
}

\markup { "A Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative a' {
        a4-"a"
        c-"c"
        d-"d"
        ef-"e♭"
        e-"e"
        g-"g"
        a-"a"
        r4
        a4-"a"
        g-"g"
        e-"e"
        ef-"e♭"
        d-"d"
        c-"c"
        a-"a"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "A Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        b-"b"
        df-"d♭"
        e-"e"
        gf-"g♭"
        a-"a"
        r2 |
        a4-"a"
        gf-"g♭"
        e-"e"
        df-"d♭"
        b-"b"
        a-"a"
    }
  }
}

\markup { "A \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        b-"b"
        df-"d♭"
        e-"e"
        gf-"g♭"
        a-"a"
        r2 |
        a4-"a"
        gf-"g♭"
        e-"e"
        df-"d♭"
        b-"b"
        a-"a"
    }
  }
}

\markup { "A \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        c-"c"
        d-"d"
        f-"f"
        g-"g"
        a-"a"
        r2 |
        a4-"a"
        g-"g"
        f-"f"
        d-"d"
        c-"c"
        a-"a"
    }
  }
}

\markup { "A \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        b-"b"
        d-"d"
        e-"e"
        gf-"g♭"
        a-"a"
        r2 |
        a4-"a"
        gf-"g♭"
        e-"e"
        d-"d"
        b-"b"
        a-"a"
    }
  }
}

\markup { "A Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative a' {
        a4-"a"
        c-"c"
        d-"d"
        e-"e"
        g-"g"
        a-"a"
        r2 |
        a4-"a"
        g-"g"
        e-"e"
        d-"d"
        c-"c"
        a-"a"
    }
  }
}
