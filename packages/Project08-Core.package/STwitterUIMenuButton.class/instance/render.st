as yet unclassified
render
	self
		height: 96;
		width: 96;
		borderWidth: 0;
		color: Color transparent.
	
	self active ifTrue: [
		self color: Color veryLightGray ].