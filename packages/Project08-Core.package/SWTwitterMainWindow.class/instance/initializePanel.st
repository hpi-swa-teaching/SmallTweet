initialize
initializePanel
	
	twitterUi := TwitterUi new initializePanel.
	mainWindow addMorph: twitterUi panel.

	self connect: (twitterUi tweetButton) signal: #clicked: toSelector: #openTweetWindow.
	self connect: (twitterUi timelineButton) signal: #clicked: toSelector: #twitterShowTimelineInWindow.
	self connect: (twitterUi userSelectionBox list) signal: #clicked: toSelector: #changeCurrentUser.
	self connect: (twitterUi settingsButton) signal: #clicked: toSelector: #openSettingsWindow.
	self connect: (twitterUi twitterCursorButton) signal: #clicked: toSelector: #useTwitterCursor.
	mainWindow label: 'Twitter'.