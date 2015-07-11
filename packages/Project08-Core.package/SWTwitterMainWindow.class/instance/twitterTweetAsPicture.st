twitterFunctions
twitterTweetAsPicture
	super
		twitterTweet: self currentUser asString
		withMedia: (super
				twitterUploadMorphAsPicture: (self tweetWindowUi tweetTextfield textMorph backgroundColor: Color white)
				for: self currentUser asString)