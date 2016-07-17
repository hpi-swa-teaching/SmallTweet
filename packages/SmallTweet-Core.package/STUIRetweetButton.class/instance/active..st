as yet unclassified
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: STUIIcons retweetActive] 
		ifFalse: [self labelGraphic: STUIIcons retweet]
	