as yet unclassified
useTwitterCursor
	|morphUnderCursor textMorph|
	
	morphUnderCursor := (TwitterCursor new initialize).
	morphUnderCursor allMorphs do: [:submorph | (submorph isKindOf: PluggableTextMorph) ifTrue: [textMorph := submorph]].
	self openTweetWindowWith: textMorph getText