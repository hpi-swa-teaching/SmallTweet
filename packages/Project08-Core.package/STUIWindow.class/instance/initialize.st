as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := STUIMenu new.
	scrollMorph := ScrollPane new.

	self setLabel: 'SmallTweet';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph;
		loadHomeTimelineView.
	