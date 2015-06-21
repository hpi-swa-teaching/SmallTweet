initialize
initialize

	mainWindow := PluggableSystemWindow new.
	settingsWindow := PluggableSystemWindow new.
	tweetWindow := PluggableSystemWindow new.
	self initializePanel.
	self class settingsInitialized: 0.
	mainWindow openInWorld.
	mainWindow extent: (self sizeOfUi: twitterUi)+self class windowOffset.