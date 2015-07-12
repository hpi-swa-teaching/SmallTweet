uiFunctions
openImageTweetWindowWith: aText 

	|aspectRatio form|

	self class tweetWindowInitialized < 1
		ifTrue: [self
				connect: tweetWindowUi tweetButton
				signal: #clicked:
				toSelector: #twitterTweet;
				
				connect: tweetWindowUi tweetAsPictureButton
				signal: #clicked:
				toSelector: #twitterTweetAsPicture.

			tweetWindowUi usernameLabel theText: self currentUser.

			form := Form fromFileNamed: 'upload.png'.
			aspectRatio := form width / form height.
			tweetWindowUi thumbnail newForm: form; scalePoint: (377/form width@(377/form width)).

			tweetWindow addMorph: tweetWindowUi panel;
				 openInWorld;
				 extent: tweetWindowUi panel extent + self class windowOffset;
				 label: 'Tweet'.
			self class tweetWindowInitialized: 1.
			^ self].
	tweetWindowUi tweetAsPictureButton enabled: true.
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	form := Form fromFileNamed: 'upload.png'.
	aspectRatio := form width / form height.
	tweetWindowUi thumbnail newForm: form; scalePoint: (377/form width@(377/form width)); show.
	tweetWindow openInWorld; extent: tweetWindowUi panel extent + self class windowOffset