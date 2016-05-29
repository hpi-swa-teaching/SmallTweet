as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := STwitterUIMenu new.
	viewMorph := Morph new.
	scrollMorph := ScrollPane new.

	self setLabel: 'SmallTweet';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph;
		addViewMorph;
		loadHomeTimelineView.
	