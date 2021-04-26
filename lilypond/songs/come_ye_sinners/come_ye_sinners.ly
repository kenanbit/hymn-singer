\version "2.20.0"
#(ly:set-option 'relative-includes #t)
\include "../../lib/hymn-common.ily"

%% TUNE INFO
composer = \smallText "Music: Southern Harmony, 1854, alt."
arranger = \smallText "arr. Kenan Schaefkofer, 2021"
meter = \smallText "INVITATION NEW 87.87.87.87"
hymnKey = \key e \major
hymnTime = \time 2/2
quarternoteTempo = 150
\include "../../lib/global-parts.ily"

%% SONG INFO
title = \titleText "Come, ye sinners, poor and wretched"
poet = \smallText "Text: Joseph Hart, 1759, alt."
typesetter = "Kenan Schaefkofer"
verseCount = 4
tags = "english theist 3part"
dateAdded = "2021-04-25"
\include "../../lib/header.ily"

%% NOTES
soprano = {
  \globalParts
  \transpose g e
  \relative g' {
    \partial 2
    g4 g | b2 4.( a8) | g4 4 a8( g4.) | e2 g4 g | b2 d | g,4 8( e) g2~ | 2 \bar "" \break
    g4 g | b2 4.( a8) | g4 4 a8( g4.) | e2 g4 g | b2 d | g,4 8( e) g2~ | 2 \bar "" \break
    d'4 e8( fs) | g2 8( d4.) | e4 d d2 | b2 d4 e8( fs) | g2 8( d4.) | b4 d e2~ | 2 \bar "" \break
    g4 8( e) | d2 b4.( a8) | g4 4 a8( g4.) | e2 g4 4 | b2 d | g,4 8( e) g2~ | \partial 2 2 \bar "|."
  }
}
alto = {
  \globalParts
  \transpose g e
  \relative e' {
    g4 4 | g2 g4.( fs8) | d4 4 2 | b2 e4 d | g2 g4.( e8) | d4 4 2~ | 2
    g4 4 | g2 g4.( fs8) | d4 4 2 | b2 e4 d | g2 g4.( e8) | d4 4 2~ | 2
    g4 8( a) | b2 g | g4 a b2 | g2 g4 8( a) | b2 g | g4 g g2~ | 2
    d4 4 | g2 4.( fs8) | d4 4 2 | b2 e4 d | g2 g4.( e8) | d4 4 2~ | 2
  }
}
tenor = {
  \globalParts
  \relative a {
  }
}
bass = {
  \globalParts
  \transpose g e
  \relative d {
    g4 4 | g2 g2 | b,4 d g2 | g g4 4 | e2 d4.( b8) | d4 4 g2~ | 2
    g4 4 | g2 g2 | b,4 d g2 | g g4 4 | e2 d4.( b8) | d4 4 g2~ | 2
    g4 d | g4( b) d2 | g,4 d4 2 | e g4 4 | g4( b) d2 | d4 b c2~ | 2
    b4 4 | g2 g2 | b,4 d g2 | g g4 4 | e2 d4.( b8) | d4 4 g2~ | 2
  }
}
songChords = \chords {
  \globalChordSymbols
  \transpose g e {
    g2 | g1 | g1 | e:m | e2:m g2 | g1 | g2
    g2 | g1 | g1 | e:m | e2:m g2 | g1 | g2
    g2 | g1 | c4 d g2 | e2:m g2 | g1 | g2 c2 | c2
    g2 | g1 | g1 | e:m | e2:m g2 | g1 | g2
  }
}

%% LYRICS
verseA = \lyricmode {
  \l Come, ye sin -- ners, poor and wretch -- ed,
  weak and wound -- ed, sick and sore.
  \l Je -- sus read -- y stands to save you,
  full of pi -- ty joined with pow'r:

  \l He is a -- ble, he is a -- ble,
  he is will -- ing; doubt no more.
  \l He is a -- ble, he is a -- ble,
  he is will -- ing; doubt no more.

}
verseB = \lyricmode {
  Come, ye need -- y, come and wel -- come,
  God's free boun -- ty glo -- ri -- fy.
  True be -- lief and true re -- pen -- tance,
  ev -- 'ry grace that brings you nigh.

  With -- out mo -- ney, with -- out mo -- ney,
  come to Je -- sus Christ and buy!
  With -- out mo -- ney, with -- out mo -- ney,
  come to Je -- sus Christ and buy!
}
verseC = \lyricmode {
  Come ye wea -- ry, hea -- vy la -- den,
  bruised and bro -- ken by the fall.
  If you tar -- ry till you're bet -- ter,
  you will nev -- er come at all:

  Not the right -- eous, not the right -- eous,
  Sin -- ners Je -- sus came to call.
  Not the right -- eous, not the right -- eous,
  Sin -- ners Je -- sus came to call.
}
verseD = \lyricmode {
  Let not con -- science make you ling -- er,
  nor of fit -- ness fond -- ly dream;
  all the fit -- ness he re -- quir -- eth
  is to feel your need of him.

  This he gives you, this he gives you,
  'Tis the Spir -- it's ris -- ing beam.
  This he gives you, this he gives you,
  'Tis the Spir -- it's ris -- ing beam.
}
verseE = \lyricmode {
  Lo! th'~in -- car -- nate God, a -- scend -- ed,
  pleads the mer -- it of his blood.
  Ven -- ture on him, ven -- ture whol -- ly,
  let no oth -- er trust in -- trude:
  None but Je -- sus, none but Je -- sus
  Can do help -- less sin -- ners good.
  None but Je -- sus, none but Je -- sus
  Can do help -- less sin -- ners good.
}
verseF = \lyricmode { }

% Set up music-aligned verses. Change to the correct number
\include "../../lib/5verse.ily"

%% All sheet music outputs
\include "../../lib/all-notation-outputs.ily"
% Slides output. Change to the correct number
\include "../../lib/slides-book-5verse.ily"
%% MIDI output
\include "../../lib/midi-output.ily"