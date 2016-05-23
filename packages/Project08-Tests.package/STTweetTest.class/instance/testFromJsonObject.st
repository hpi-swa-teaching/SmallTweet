as yet unclassified
testFromJsonObject
	| tweetJson jsonObject tweet |
	
	tweetJson := '{"id": 27634}'.
	jsonObject := (Json new stream: (ReadStream on:  tweetJson)) readAny.
	tweet := STTweet from: jsonObject.
	
	self assert: (tweet id) equals: (jsonObject at: 'id').