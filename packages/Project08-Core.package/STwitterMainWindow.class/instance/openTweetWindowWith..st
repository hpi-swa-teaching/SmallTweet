uiFunctions
openTweetWindowWith: aText 

	self class tweetWindowInitialized < 1
		ifTrue: [^self setupTweetWindow].

	tweetWindowUi tweetAsPictureButton enabled: false.
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	tweetWindowUi thumbnail hide; scalePoint: 1@1.
	tweetWindow openInWorld; extent: tweetWindowUi panel extent + self class windowOffset