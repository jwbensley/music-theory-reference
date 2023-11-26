\version "2.18.2"
\language "english"

\header {
  title = "A♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "A♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
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
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
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
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
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

\markup { "A♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
        af4-"a♭"
        bf-"b♭"
        b-"b"
        df-"d♭"
        ef-"e♭"
        f-"f"
        gf-"g"
        af-"a♭" |
        af-"a♭"
        gf-"g"
        e-"f"
        ef-"e♭"
        df-"d♭"
        b-"b"
        bf-"b♭"
        af4-"a♭"
    }
  }
}

\markup { "A♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative af' {
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

\markup { "Hexatonic Scales" }
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
