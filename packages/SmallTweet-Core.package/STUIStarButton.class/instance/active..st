as yet unclassified
active: aBool 
	super active: aBool.
	aBool 
		ifTrue: [self labelGraphic: STUIIcons starActive] 
		ifFalse: [self labelGraphic: STUIIcons star]
	