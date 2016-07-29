as yet unclassified
setValue: newValue

	(newValue = self getMaximumValue) & (newValue ~= self getValue)
		ifTrue: [STUIWindow instance viewMorph loadMoreTweets].
	
	(newValue = 0) & (newValue ~= self getValue)
		ifTrue: [STUIWindow instance viewMorph refreshTweets].
			
	super setValue: newValue.
	
	