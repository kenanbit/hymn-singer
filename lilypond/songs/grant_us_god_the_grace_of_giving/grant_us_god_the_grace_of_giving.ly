\version "2.20.0"
#(ly:set-option 'relative-includes #t)
\include "../../lib/hymn_common.ly"

%% TUNE INFO
\include "../../shared_tunes/stuttgart.ly"

%% SONG INFO
title = \titleText "Grant us, God, the grace of giving"
%subtitle = \smallText "Optional"
poet = \smallText "Text: Robert Murray, 1880, alt."
typesetter = "Kenan Schaefkofer"
verseCount = 1
tags = "english theist 4part"
dateAdded = "2021-03-14"
\include "../../lib/header.ly"

%% LYRICS
verseA = \tag #'verseA \lyricmode {
  Grant us, God, the grace of giv -- ing with a spir -- it large and free
  that our -- selves and all our liv -- ing we may of -- fer un -- to thee.
}

all_verses = <<
  \new NullVoice = "soprano" \soprano
  % Add what you need. If more than 4, fill in the second argument as shown in 5 and 6
  \new Lyrics  \lyricsto soprano  { \globalLyrics "" "" \verseA }
>>

%% All sheet music outputs
\include "../../lib/all_notation_outputs.ly"
% Slides output
\include "../../lib/slides_book_1verse.ly"
%% MIDI output
\include "../../lib/midi_output.ly"
