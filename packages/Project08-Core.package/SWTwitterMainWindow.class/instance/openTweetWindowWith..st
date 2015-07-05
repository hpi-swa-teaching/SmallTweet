uiFunctions
openTweetWindowWith: aText

	(self class tweetWindowInitialized < 1) ifTrue: [
		self connect: (tweetWindowUi tweetButton) signal: #clicked: toSelector: #twitterTweet. 
		self connect: (tweetWindowUi tweetAsPictureButton) signal: #clicked: toSelector: #twitterTweetAsPicture.
		tweetWindowUi usernameLabel theText: self currentUser.
		tweetWindow addMorph: tweetWindowUi panel.
		tweetWindow openInWorld.
		tweetWindow extent: tweetWindowUi panel extent + self class windowOffset.
		tweetWindow label: 'Tweet'.
		self class tweetWindowInitialized: 1.
		^self
	].
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	tweetWindow openInWorld.
	tweetWindow extent: tweetWindowUi panel extent + self class windowOffset.