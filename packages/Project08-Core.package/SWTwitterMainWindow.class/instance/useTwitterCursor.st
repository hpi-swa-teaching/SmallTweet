as yet unclassified
useTwitterCursor
	| morphUnderCursor textMorph |
	morphUnderCursor := TwitterCursor new initialize.
	morphUnderCursor allMorphs
		do: [:submorph | (submorph isKindOf: PluggableTextMorph)
				ifTrue: [
					"We primarily want to tweet code, so we need text that has syntax highlighting"
					(submorph styler isNil)
						ifTrue: [textMorph := submorph]
						ifFalse: [textMorph := submorph.
							textMorph := textMorph textMorph backgroundColor: Color white.
							textMorph exportAsPNGNamed: 'upload.png'.
							self openImageTweetWindow.
							^ self]]].
	textMorph isNil
		ifTrue: [morphUnderCursor exportAsPNGNamed: 'upload.png'.
				self openImageTweetWindow]
		"If there are no textMorph with syntax hightlighting, take the last one found"
		ifFalse: [textMorph := textMorph textMorph backgroundColor: Color white.
				textMorph exportAsPNGNamed: 'upload.png'.
				self openImageTweetWindow.]