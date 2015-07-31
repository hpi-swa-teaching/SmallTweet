uiFunctions
openImageTweetWindowWithText: aText Form: aForm 

	self class tweetWindowInitialized < 1
		ifTrue: [^self setupImageTweetWindow].

	tweetWindowUi tweetAsPictureButton enabled: true.
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	self createThumbnailFrom: aForm.
	tweetWindowUi thumbnail show.
	tweetWindow openInWorld; extent: tweetWindowUi panel extent + self class windowOffset