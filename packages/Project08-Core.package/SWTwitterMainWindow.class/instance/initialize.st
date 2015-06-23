initialize
initialize

	mainWindow := PluggableSystemWindow new.
	settingsWindow := PluggableSystemWindow new.
	tweetWindow := PluggableSystemWindow new.
	tweetWindowUi := TweetWindowUi new initializePanel.
	self initializePanel.
	self class settingsInitialized: 0.
	self class tweetWindowInitialized: 0.
	self currentUser: 'Please Login First'.
	mainWindow openInWorld.
	mainWindow extent: twitterUi panel extent + self class windowOffset.