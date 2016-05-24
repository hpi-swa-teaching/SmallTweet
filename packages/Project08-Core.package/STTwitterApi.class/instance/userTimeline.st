endpoints
userTimeline
	| endpoint response |
	endpoint := STTwitterApi apiUrl, '/1.1/statuses/user_timeline.json'.
	response := self webClient httpGet: endpoint.
	response isSuccess 
		ifTrue: [^ self deserialize: (response content) intoCollectionOf: STTweet] 
		ifFalse: [^ self deserialize: (response content) intoObjectOf: STError].