as yet unclassified
initialize
	super initialize.
	
	loadedViews := Dictionary new.
	menuMorph := STUIMenu new.
	scrollMorph := ScrollPane new.	
	
	self twitterApi: (STTwitterApi 
						consumerKey: 'D9Tx60HiGBVrBjsQUZ5KR4ZYs'  
						consumerSecret: 'SmRTpc7YVxForTi89wA0pMVFFEzoYcC4Th6OERAKhWZFZGsAzc').
	
	self setLabel: 'SmallTweet';
		paneColor: Color veryVeryLightGray;
		addMenuMorph;
		addScrollMorph;
		loadSettingsView.
	