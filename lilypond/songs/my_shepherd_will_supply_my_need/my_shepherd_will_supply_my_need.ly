\version "2.20.0"
#(ly:set-option 'relative-includes #t)
\include "../../lib/hymn_common.ly"

%% TUNE INFO
\include "../../shared_tunes/resignation_arrbykenan.ly"

%% SONG INFO
title = \titleText "My Shepherd will supply my need"
poet = \smallText "Text: Isaac Watts, 1719, alt."
typesetter = "Kenan Schaefkofer"
verseCount = 3
tags = "english christian 4part"
dateAdded = "2021-03-04"
\include "../../lib/header.ly"

%% LYRICS
verseA = \tag #'verseA \lyricmode {
  \l My Shep -- herd will sup -- ply my need; most ho -- ly is your name.
  \l In pas -- tures fresh you make me feed, be -- side the liv -- ing stream.
  \l You bring my wan -- d'ring spir -- it back, when I for -- sake your ways,
  \l and lead me for your mer -- cy's sake, in paths of truth and grace.
}
verseB = \tag #'verseB \lyricmode {
  When I walk through the shades of death, your pres -- ence is my stay.
  One word of your sup -- port -- ing breath drives all my fears a -- way.
  Your hand, in sight of all my foes, does still my ta -- ble spread.
  My cup with bless -- ings o -- ver -- flows, your oil a -- noints my head.
}
verseC = \tag #'verseC \lyricmode {
  The sure pro -- vi -- sions of my God at -- tend me all my days.
  Oh, may your house be my a -- bode, and all my work be praise.
  There would I find a set -- tled rest, while oth -- ers go and come,
  no more a stran -- ger, nor a guest, but like a child at home.
}

all_verses = <<
  \new NullVoice = "soprano" \soprano
  % Add what you need. If more than 4, fill in the second argument as shown in 5 and 6
  \new Lyrics  \lyricsto soprano  { \globalLyrics "1" "" \verseA }
  \new Lyrics  \lyricsto soprano  { \globalLyrics "2" "" \verseB }
  \new Lyrics  \lyricsto soprano  { \globalLyrics "3" "" \verseC }
>>

%% All sheet music outputs
\include "../../lib/all_notation_outputs.ly"
% Slides output
\include "../../lib/slides_book_3verse.ly"
%% MIDI output
\include "../../lib/midi_output.ly"
