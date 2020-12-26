\version "2.18.2"
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
        dflat-"d♭"
        eflat-"e♭"
        e-"e"
        gflat-"g♭"
        aflat-"a♭"
        bflat-"b♭"
        b-"b" |
        b-"b"
        bflat-"b♭"
        aflat-"a♭"
        gflat-"g♭"
        e-"e"
        eflat-"e♭"
        dflat-"d♭"
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
        dflat-"d♭"
        d-"d"
        e-"e"
        gflat-"g♭"
        g-"g"
        a-"a"
        b-"b" |
        b-"b"
        a-"a"
        g-"g"
        gflat-"g♭"
        e-"e"
        d-"d"
        dflat-"d♭"
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
        dflat-"d♭"
        d-"d"
        e-"e"
        gflat-"g♭"
        g-"g"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"g"
        gflat-"g♭"
        e-"e"
        d-"d"
        dflat-"d♭"
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
        dflat-"d♭"
        d-"d"
        e-"e"
        gflat-"g♭"
        aflat-"a♭"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"a♭"
        gflat-"g♭"
        e-"e"
        d-"d"
        dflat-"d♭"
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
        dflat-"d♭"
        d-"d"
        e-"e"
        gflat-"g♭"
        g-"g"
        a-"b♭"
        b-"b" |
        b-"b"
        a-"b♭"
        g-"g"
        gflat-"g♭"
        e-"e"
        d-"d"
        dflat-"d♭"
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
        dflat-"d♭"
        d-"d"
        eflat-"e♭"
        gflat-"g♭"
        aflat-"a♭"
        b-"b"
        r4
        b4-"b"
        aflat-"a♭"
        gflat-"g♭"
        e-"e♭"
        d-"d"
        dflat-"d♭"
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
        gflat-"g♭"
        a-"a"
        b-"b"
        r4
        b4-"b"
        a-"a"
        gflat-"g♭"
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
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        aflat-"a♭"
        b-"b"
        r2 |
        b4-"b"
        aflat-"a♭"
        gflat-"g♭"
        eflat-"e♭"
        dflat-"d♭"
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
        dflat-"d♭"
        eflat-"e♭"
        gflat-"g♭"
        aflat-"a♭"
        b-"b"
        r2 |
        b4-"b"
        aflat-"a♭"
        gflat-"g♭"
        eflat-"e♭"
        dflat-"d♭"
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
        dflat-"d♭"
        e-"e"
        gflat-"g♭"
        aflat-"a♭"
        b-"b"
        r2 |
        b4-"b"
        aflat-"a♭"
        gflat-"g♭"
        e-"e"
        dflat-"d♭"
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
        gflat-"g♭"
        a-"a"
        b-"b"
        r2 |
        b4-"b"
        a-"a"
        gflat-"g♭"
        e-"e"
        d-"d"
        b-"b"
    }
  }
}
