as yet unclassified
render
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10; 
		cellInset: 10;
		wrapCentering: #left;
		color: Color white.

	self displayImage.
	self displayText.