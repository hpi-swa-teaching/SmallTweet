initialize
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	twitterUi := TwitterUi new initializePanel.
	twitterUi sendButton enabled: false.
	mainWindow addMorph: twitterUi panel.

	self connect: (twitterUi tweetButton) signal: #clicked: toSelector: #openTweetWindow.
	self connect: (twitterUi sendButton) signal: #clicked: toSelector: #twitterTweet.
	mainWindow label: 'Twitter'.