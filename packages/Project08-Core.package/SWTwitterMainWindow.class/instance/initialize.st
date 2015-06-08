initialize
initialize

	mainWindow := PluggableSystemWindow new.
	self initializePanel.
	self twitterShowTimelineInWindow.
	mainWindow openInWorld 