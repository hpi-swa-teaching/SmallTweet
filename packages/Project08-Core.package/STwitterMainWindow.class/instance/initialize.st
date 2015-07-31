initialize
initialize

	self initializePanel.
	self initializeButtons.
	self class settingsInitialized: 0.
	self class tweetWindowInitialized: 0.
	self currentUser: 'Please Login First'.
	mainWindow 	openInWorld;
	 				extent: twitterUi panel extent + self class windowOffset.
      Smalltalk at: #currentTwitter put: self.