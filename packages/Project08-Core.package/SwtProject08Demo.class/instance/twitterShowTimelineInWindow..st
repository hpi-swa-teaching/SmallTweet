as yet unclassified
twitterShowTimelineInWindow: aTwitterName
      |jsonObj window text scrollPane pasteUpMorph|

      jsonObj := self twitterGetTimeline: aTwitterName.
      window := SystemWindow new.
      scrollPane := ScrollPane new.
      pasteUpMorph := PasteUpMorph new.
      pasteUpMorph extent: (1000@1000).
      text := TextMorph new.
      text contents: ''.
      text position: (5@5).
	jsonObj do: [:j | text contents: (text contents, (j at: 'text'), String cr, String cr)].
      pasteUpMorph addMorph: text.
      scrollPane scroller addMorph: pasteUpMorph. 
      window addMorph: scrollPane frame: (0@0 corner: 1@1) .
	window openInWorld.