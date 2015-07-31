twitterFunctions
useTwitterCursor
	| morphUnderCursor textMorph |
	morphUnderCursor := STwitterCursor new getContentAtClick.
	morphUnderCursor allMorphs
		do: [:submorph | (submorph isKindOf: PluggableTextMorph)
				ifTrue: [
					"We primarily want to tweet code, so we need text that has syntax highlighting"
					(submorph styler isNil)
						ifTrue: [textMorph := submorph]
						ifFalse: ["self openImageTweetWindowFor: submorph." 
								textMorph := submorph.
								textMorph := textMorph textMorph backgroundColor: Color white.
								textMorph exportAsPNGNamed: 'upload.png'.
								self openImageTweetWindow.
								^ self]]].
	textMorph isNil
		ifTrue: [	"self openImageTweetWindowFor: morphUnderCursor" 
				morphUnderCursor exportAsPNGNamed: 'upload.png'.
				self openImageTweetWindow.]
		"If there are no textMorph with syntax hightlighting, take the last one found"
		ifFalse: ["self openImageTweetWindowFor: textMorph" 
				textMorph := textMorph textMorph backgroundColor: Color white.
				textMorph exportAsPNGNamed: 'upload.png'.
				self openImageTweetWindow]