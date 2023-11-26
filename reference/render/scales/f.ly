\version "2.18.2"
\language "english"

\header {
  title = "F"
  composer = "J. W. Bensley"
}\markup { "Diatonic Heptatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major" }
\markup { "whole, whole, half, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        a-"a"
        bf-"b♭"
        c-"c"
        d-"d"
        e-"e"
        f-"f" |
        f-"f"
        e-"e"
        d-"d"
        c-"c"
        bf-"b♭"
        a-"a"
        g-"g"
        f4-"f"
    }
  }
}

\markup { "F Minor Natural" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭"
        ef-"e♭"
        f-"f" |
        f-"f"
        ef-"e♭"
        df-"d♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f4-"f"
    }
  }
}


\markup { "F Minor Harmonic" }
\markup { "whole, half, whole, whole, half, whole + half, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭"
        ef-"e"
        f-"f" |
        f-"f"
        ef-"e"
        df-"d♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f4-"f"
    }
  }
}

\markup { "F Minor Melodic - Ascending" }
\markup { "whole, half, whole, whole, whole, whole, half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c"
        d-"d"
        ef-"e"
        f-"f" |
        f-"f"
        ef-"e"
        df-"d"
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f4-"f"
    }
  }
}

\markup { "F Minor Melodic - Descending" }
\markup { "whole, half, whole, whole, half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        af-"a♭"
        bf-"b♭"
        c-"c"
        df-"d♭"
        ef-"e"
        f-"f" |
        f-"f"
        ef-"e"
        df-"d♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        g-"g"
        f4-"f"
    }
  }
}

\markup { "Hexatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major Hexatonic \"Blues\"" }
\markup { "whole, half, half, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        af-"a♭"
        a-"a"
        c-"c"
        d-"d"
        f-"f"
        r4
        f4-"f"
        d-"d"
        c-"c"
        bf-"a"
        af-"a♭"
        g-"g"
        f-"f"
    }
  }
}

\markup { "F Minor Hexatonic \"Blues\"" }
\markup { "whole + half, whole, half, half, whole + half, whole" }
\score {
  \new PianoStaff {
    \time 4/4
    \clef "treble"
    \relative f' {
        f4-"f"
        af-"a♭"
        bf-"b♭"
        b-"b"
        c-"c"
        ef-"e♭"
        f-"f"
        r4
        f4-"f"
        ef-"e♭"
        c-"c"
        b-"b"
        bf-"b♭"
        af-"a♭"
        f-"f"
    }
  }
}

\markup { "Pentatonic Scales" }
\markup { \vspace #1 }

\markup { "F Major Pentatonic" }
\markup { "whole, whole, whole + half, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        a-"a"
        c-"c"
        d-"d"
        f-"f"
        r2 |
        f4-"f"
        d-"d"
        c-"c"
        a-"a"
        g-"g"
        f-"f"
    }
  }
}

\markup { "F \"Egyptian Suspended\" Pentatonic" }
\markup { "whole, whole + half, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        a-"a"
        c-"c"
        d-"d"
        f-"f"
        r2 |
        f4-"f"
        d-"d"
        c-"c"
        a-"a"
        g-"g"
        f-"f"
    }
  }
}

\markup { "F \"Blues Minor\" Pentatonic" }
\markup { "whole + half, whole, whole + half, whole, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        af-"a♭"
        bf-"b♭"
        df-"d♭"
        ef-"e♭"
        f-"f"
        r2 |
        f4-"f"
        ef-"e♭"
        df-"d♭"
        bf-"b♭"
        af-"a♭"
        f-"f"
    }
  }
}

\markup { "F \"Blues Major\" Pentatonic" }
\markup { "whole, whole + half, whole, whole, whole + half" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        g-"g"
        bf-"b♭"
        c-"c"
        d-"d"
        f-"f"
        r2 |
        f4-"f"
        d-"d"
        c-"c"
        bf-"b♭"
        g-"g"
        f-"f"
    }
  }
}

\markup { "F Minor Pentatonic" }
\markup { "whole + half, whole, whole, whole + half, whole" }
\score {
  \new PianoStaff {
    \clef "treble"
    \relative f' {
        f4-"f"
        af-"a♭"
        bf-"b♭"
        c-"c"
        ef-"e♭"
        f-"f"
        r2 |
        f4-"f"
        ef-"e♭"
        c-"c"
        bf-"b♭"
        af-"a♭"
        f-"f"
    }
  }
}
