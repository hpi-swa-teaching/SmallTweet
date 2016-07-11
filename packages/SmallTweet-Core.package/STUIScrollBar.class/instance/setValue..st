as yet unclassified
setValue: newValue

	(newValue = self getMaximumValue) & (newValue ~= self getValue)
		ifTrue: [self owner owner viewMorph loadMoreTweets].
	
	(newValue = 0) & (newValue ~= self getValue)
		ifTrue: [self owner owner viewMorph refreshTweets].
			
	super setValue: newValue.
	
	