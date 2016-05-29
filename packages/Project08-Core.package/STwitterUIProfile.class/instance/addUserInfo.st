as yet unclassified
addUserInfo 
	| userInfo text userName userRealName userDescription |
	
	userName := '@derStadtpirat'.
	userRealName := 'Nico Knoll'.
	userDescription := 'You want your website to become awesome? Call Barney. Or hire me. In love with @processwire CMS. Working at @4scotty..'.
	
	userInfo := RectangleMorph new color: Color darkGray.
	userInfo 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		cellInset: 20;
		layoutInset:20;
		vResizing: #shrinkWrap;
		borderWidth: 0.
		
	text := TextMorph new contentsWrapped: (
		'<b>', userRealName, '</b><br>',
		'<font color="#cccccc">', userName, '</font><br><br>',
		userDescription) asHtmlText.
	text 
		wrapFlag: true;
	 	lock;
		width:400;
		color:Color white;
		centered.
		
	userInfo addMorphBack: ImageMorph new.
	userInfo addMorphBack: text.
	
	self addMorphBack: userInfo.
	