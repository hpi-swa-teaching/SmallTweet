initialize-release
render
	| tweetMorph nextPosition |
	nextPosition := (self tweetListMorph left + self margin) @ (self tweetListMorph top + self margin).
	self tweetList
		do: [:currentTweet | 
			tweetMorph := STTweetMorph new.
			tweetMorph position: nextPosition.
			tweetMorph tweet: currentTweet.
			tweetListMorph addMorph: tweetMorph.
			tweetListMorph height: tweetListMorph height + tweetMorph height + self margin.
			nextPosition setX: nextPosition x setY: tweetMorph bottom + self margin]