initialize
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	twitterUi := TwitterUi new initializePanel.
	twitterUi sendButton enabled: false.
	twitterUi userSelectionBox addText: 'SWTSpamaccount'.
	twitterUi userSelectionBox addText: 'Tymolc'.
	self currentUser: 'SWTSpamaccount'.
	mainWindow addMorph: twitterUi panel.

	self connect: (twitterUi tweetButton) signal: #clicked: toSelector: #openTweetWindow.
	self connect: (twitterUi sendButton) signal: #clicked: toSelector: #twitterTweet.
	self connect: (twitterUi timelineButton) signal: #clicked: toSelector: #twitterShowTimelineInWindow.
	self connect: (twitterUi userSelectionBox list) signal: #clicked: toSelector: #changeCurrentUser.
	mainWindow label: 'Twitter'.