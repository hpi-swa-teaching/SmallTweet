uiFunctions
openImageTweetWindowWith: aText 

	self class tweetWindowInitialized < 1
		ifTrue: [^self setupTweetWindow].

	tweetWindowUi tweetAsPictureButton enabled: true.
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	self createThumbnail.
	tweetWindowUi thumbnail show.
	tweetWindow openInWorld; extent: tweetWindowUi panel extent + self class windowOffset