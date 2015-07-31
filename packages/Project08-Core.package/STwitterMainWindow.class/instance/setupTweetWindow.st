uiFunctions
setupTweetWindow

	self
		connect: tweetWindowUi tweetButton
		signal: #clicked:
		toSelector: #twitterTweet;
		
		connect: tweetWindowUi tweetAsPictureButton
		signal: #clicked:
		toSelector: #twitterTweetAsPicture.
	tweetWindowUi usernameLabel theText: self currentUser.
	tweetWindowUi thumbnail hide; scalePoint: 1 @ 1.
	tweetWindow addMorph: tweetWindowUi panel;
		 openInWorld;
		 extent: tweetWindowUi panel extent + self class windowOffset;
		 label: 'Tweet'.
	self class tweetWindowInitialized: 1