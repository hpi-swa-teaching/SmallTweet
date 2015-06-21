initialize
initializePanel
	
	twitterUi := TwitterUi new initializePanel.
	twitterUi sendButton enabled: false.
	mainWindow addMorph: twitterUi panel.

	self connect: (twitterUi tweetButton) signal: #clicked: toSelector: #openTweetWindow.
	self connect: (twitterUi sendButton) signal: #clicked: toSelector: #twitterTweet.
	self connect: (twitterUi timelineButton) signal: #clicked: toSelector: #twitterShowTimelineInWindow.
	self connect: (twitterUi userSelectionBox list) signal: #clicked: toSelector: #changeCurrentUser.
	self connect: (twitterUi settingsButton) signal: #clicked: toSelector: #openSettingsWindow.
	mainWindow label: 'Twitter'.