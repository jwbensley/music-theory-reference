\version "2.24.3"
\language "english"

\header {
  title = "B"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "B Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        ef-"e♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        b-"b" |
        b-"b"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        e-"e"
        ef-"e♭"
        df-"d♭"
        b4-"b"
    }
  }
}

\markup { "B Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭"
        g-"g"
        a-"a"
        b-"b" |
        b-"b"
        a-"a"
        g-"g"
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b4-"b"
    }
  }
}


\markup { "B Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭"
        g-"g"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"g"
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b4-"b"
    }
  }
}

\markup { "B Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭"
        af-"a♭"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"a♭"
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b4-"b"
    }
  }
}

\markup { "B Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        d-"d"
        e-"e"
        gf-"g♭"
        g-"g"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"g"
        gf-"g♭"
        e-"e"
        d-"d"
        df-"d♭"
        b4-"b"
    }
  }
}

\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "B Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        d-"d"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        b-"b"
        r4
        b4-"b"
        af-"a♭"
        gf-"g♭"
        e-"e♭"
        d-"d"
        df-"d♭"
        b-"b"
    }
  }
}

\markup { "B Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative b' {
        b4-"b"
        d-"d"
        e-"e"
        f-"f"
        gf-"g♭"
        a-"a"
        b-"b"
        r4
        b4-"b"
        a-"a"
        gf-"g♭"
        f-"f"
        e-"e"
        d-"d"
        b-"b"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "B Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        b-"b"
        r2 |
        b4-"b"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
        df-"d♭"
        b-"b"
    }
  }
}

\markup { "B \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        ef-"e♭"
        gf-"g♭"
        af-"a♭"
        b-"b"
        r2 |
        b4-"b"
        af-"a♭"
        gf-"g♭"
        ef-"e♭"
        df-"d♭"
        b-"b"
    }
  }
}

\markup { "B \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        d-"d"
        e-"e"
        g-"g"
        a-"a"
        b-"b"
        r2 |
        b4-"b"
        a-"a"
        g-"g"
        e-"e"
        d-"d"
        b-"b"
    }
  }
}

\markup { "B \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        df-"d♭"
        e-"e"
        gf-"g♭"
        af-"a♭"
        b-"b"
        r2 |
        b4-"b"
        af-"a♭"
        gf-"g♭"
        e-"e"
        df-"d♭"
        b-"b"
    }
  }
}

\markup { "B Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative b' {
        b4-"b"
        d-"d"
        e-"e"
        gf-"g♭"
        a-"a"
        b-"b"
        r2 |
        b4-"b"
        a-"a"
        gf-"g♭"
        e-"e"
        d-"d"
        b-"b"
    }
  }
}
