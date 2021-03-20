\version "2.20.0"
#(ly:set-option 'relative-includes #t)
\include "../../lib/hymn_common.ly"

%% TUNE INFO
\include "../../shared_tunes/hyfrydol_public.ly"
quarternoteTempo = 120

%% SONG INFO
title = \titleText "Come, thou long-expected Jesus"
poet = \smallText "Text: Charles Wesley, 1744"
copyright = \public_domain_notice "Kenan Schaefkofer"
verseCount = 2
tags = "english christian 4part musicbyother textbyother"
dateAdded = "2021-01-07"
\include "../../lib/header.ly"

%% LYRICS
verseA = \lyricmode {
  Come, thou long -- ex -- pect -- ed Je -- sus! born to set thy peo -- ple free,
  from our fears and sins re -- lease us, let us find our rest in thee.
  Is -- rael's strength and con -- so -- la -- tion, hope of all the earth thou art,
  dear de -- sire of ev -- 'ry na -- tion, joy of ev -- 'ry long -- ing heart.
}
verseB = \lyricmode {
  Born thy peo -- ple to de -- liv -- er, born a child, and yet a King,
  born to reign in us for -- ev -- er, now thy gra -- cious king -- dom bring.
  By thine own e -- ter -- nal Spir -- it, rule in all our hearts a -- lone.
  By thine all -- suf -- fi -- cient mer -- it, raise us to thy glo -- rious throne.
}

all_verses = <<
  \new NullVoice = "soprano" \soprano
  % Add what you need. If more than 4, fill in the second argument as shown in 5 and 6
  \new Lyrics  \lyricsto soprano  { \globalLyrics "1" "" \verseA }
  \new Lyrics  \lyricsto soprano  { \globalLyrics "2" "" \verseB }
>>

%% All sheet music outputs
\include "../../lib/all_notation_outputs.ly"
%% MIDI output
\include "../../lib/midi_output.ly"