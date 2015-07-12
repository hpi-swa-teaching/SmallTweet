twitterFunctions
twitterTweet

	|returnCode|
	returnCode := super twitterTweet: (self currentUser asString).
	(returnCode = 0) 
			ifTrue: [tweetWindow delete.]
			ifFalse: [tweetWindowUi tweetTextfield theText: returnCode.]