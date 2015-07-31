uiFunctions
openImageTweetWindowFor: aMorph

	|morph|	
	
	morph := aMorph.
	(aMorph isKindOf: PluggableTextMorph) ifTrue: [morph := aMorph textMorph backgroundColor: Color white.].
	self thumbnailImage: morph imageForm.
	self openImageTweetWindowWithForm: morph imageForm.
