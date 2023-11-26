\version "2.18.2"
\language "english"

\header {
  title = "E♭"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "E♭ Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
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
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
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
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
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

\markup { "E♭ Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
        ef4-"e♭"
        f-"f"
        gf-"g♭"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d"
        ef-"e♭" |
        ef-"e♭"
        df-"d"
        b-"c"
        bf-"b♭"
        af-"a♭"
        gf-"g♭"
        f-"f"
        ef4-"e♭"
    }
  }
}

\markup { "E♭ Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative ef' {
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

\markup { "Hexatonic Scales" }
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
