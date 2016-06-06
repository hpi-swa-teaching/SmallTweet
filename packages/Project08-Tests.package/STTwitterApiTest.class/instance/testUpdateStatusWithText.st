as yet unclassified
testUpdateStatusWithText
	| tweet result text |
	twitterApi webClient mock: '/1.1/statuses/update.json' with: Fixture updateStatusWithTextResponse.
	text := 'Testing SmallTweet'.
	
	result := twitterApi updateStatusWith: text .
	self assert: result isSuccess.
	
	tweet := result value.
	self assert: (tweet id) equals: 243145735212777472.
	self assert: (tweet text) equals: text.
	 