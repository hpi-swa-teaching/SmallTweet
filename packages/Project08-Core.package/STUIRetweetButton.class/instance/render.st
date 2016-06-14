as yet unclassified
render 
	super render.
	self
		target: self;
		labelGraphic: STUIIcons retweet;
		actionSelector: #test.