as yet unclassified
addUserSectionButtons
	| addButton removeButton buttonWrapper |
	
	buttonWrapper := Morph new borderWidth: 1.
	buttonWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		cellInset: 10;
		borderWidth: 1.
	
	addButton := UiPushButton new.
	addButton text: 'Add User'.
	buttonWrapper addMorphBack: addButton.
	
	removeButton := UiPushButton new.
	removeButton text: 'Logout'.
	buttonWrapper addMorphBack: removeButton.
	
	self addMorphBack: buttonWrapper.

