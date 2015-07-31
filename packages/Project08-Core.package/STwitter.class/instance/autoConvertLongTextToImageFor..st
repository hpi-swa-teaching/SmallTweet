twitterFunctions
autoConvertLongTextToImageFor: aTwitterUser 

	| emergencyTextMorph |
	emergencyTextMorph := self tweetWindowUi tweetTextfield textMorph.
	emergencyTextMorph backgroundColor: Color white;
		 exportAsPNGNamed: 'upload.png'.
	(self
			twitterTweet: aTwitterUser
			withMedia: (self twitterUploadMorphAsPictureFor: aTwitterUser)
			withText: 'Automatically converted to an image, because content was too long. #SmallTweet' = 0)
		ifTrue: [self tweetWindow delete]