as yet unclassified
testDeserializeAStringIntoCollectionOfAClass
	| collectionJson collection |
	collectionJson := Fixture userTimelineJsonResponse.
	collection := twitterApi deserialize: collectionJson intoCollectionOf: STTweet.
	
	self assert: (collection at: 1) id equals: 240859602684612608.
	self assert: (collection at: 2) id equals: 239413543487819778.
	