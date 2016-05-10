initialize
initializeButtons

	self
		connect: twitterUi tweetButton
		signal: #clicked:
		toSelector: #openTweetWindow;
		
		connect: twitterUi userTimelineButton
		signal: #clicked:
		toSelector: #twitterShowUserTimelineInWindow;
		
		connect: twitterUi newsTimelineButton
		signal: #clicked:
		toSelector: #twitterShowNewsTimelineInWindow;
		
		connect: twitterUi userSelectionBox list
		signal: #clicked:
		toSelector: #changeCurrentUser;
		
		connect: twitterUi settingsButton
		signal: #clicked:
		toSelector: #openSettingsWindow;
		
		connect: twitterUi twitterCursorButton
		signal: #clicked:
		toSelector: #useTwitterCursor.