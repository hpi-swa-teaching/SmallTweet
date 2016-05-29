as yet unclassified
drawButtons 
	| marginTop |
	marginTop := 0.
	
	buttons do: [ :entry |
		| button |
		button := IconicButton new.
		self addMorphBack: button.
		button 
			target: (entry at: #target);
			labelGraphic: (entry at: #image);
			actionSelector: (entry at: #action);
			height: 96;
			width: 96;
			position: 0@marginTop;
			color: Color transparent;
			borderWidth: 0.
	
		marginTop := marginTop + 96.
	].