as yet unclassified
addUserSectionList
	| list listWrapper |
	
	listWrapper := RectangleMorph new borderWidth: 1.
	listWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		borderColor: Color gray;
		borderWidth: 1.
		
	list := UiListWidget new.
	list addText: 'Nico Knoll (@nico_knoll)'.
	list hResizing: #spaceFill.
	listWrapper addMorphBack: list.
	
	self addMorphBack: listWrapper.
