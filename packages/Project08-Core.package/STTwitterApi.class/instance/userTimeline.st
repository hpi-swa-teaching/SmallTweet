endpoints
userTimeline
	| endpoint response tweets |
	endpoint := STTwitterApi apiUrl, '/1.1/statuses/user_timeline.json'.
	response := self webClient httpGet: endpoint.
	tweets := self deserialize: (response content) intoCollectionOf: STTweet.
	^ tweets