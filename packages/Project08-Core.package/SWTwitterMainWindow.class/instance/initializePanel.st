initialize
initializePanel
	twitterUi := TwitterUi new initializePanel.
	mainWindow addMorph: twitterUi panel.
	self
		connect: twitterUi tweetButton
		signal: #clicked:
		toSelector: #openTweetWindow;
		
		connect: twitterUi timelineButton
		signal: #clicked:
		toSelector: #twitterShowTimelineInWindow;
		
		connect: twitterUi userSelectionBox list
		signal: #clicked:
		toSelector: #changeCurrentUser;
		
		connect: twitterUi settingsButton
		signal: #clicked:
		toSelector: #openSettingsWindow;
		
		connect: twitterUi twitterCursorButton
		signal: #clicked:
		toSelector: #useTwitterCursor.
	mainWindow label: 'Twitter'