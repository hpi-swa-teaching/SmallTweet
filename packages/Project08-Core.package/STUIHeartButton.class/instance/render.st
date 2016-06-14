as yet unclassified
render 
	super render.
	self
		target: self;
		labelGraphic: STUIIcons heart;
		actionSelector: #test.