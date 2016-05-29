as yet unclassified
initialize
	super initialize.
	self setLabel: 'SmallTweet'.
	
	menuMorph := STwitterUIMenu new.
	viewMorph := STwitterUIHomeTimeline new.
	scrollMorph := ScrollPane new.

	self addMenuMorph.
	self addScrollMorph.
	self addViewMorph.
	
	self paneColor: Color veryVeryLightGray.