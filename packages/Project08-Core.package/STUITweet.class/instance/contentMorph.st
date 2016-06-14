as yet unclassified
contentMorph

	content := Morph new.
	content 
		layoutPolicy: TableLayout new;
		"listDirection: #topToBottom;"
		wrapDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self textMorph;
		addMorphBack: self imageMorph;
		addMorphBack: self actionsMorph.
		
	^ content