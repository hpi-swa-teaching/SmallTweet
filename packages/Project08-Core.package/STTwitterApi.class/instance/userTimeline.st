endpoints
userTimeline
	| url response |
	url := STTwitterApi apiUrl, '/1.1/statuses/user_timeline.json'.
	response := self webClient 
		httpGet: url
		do: [:req | WebUtils
			oAuthSign: req
			url: url
			using: self accessTokenParams].
	response isSuccess 
		ifTrue: [^ self deserialize: (response content) intoCollectionOf: STTweet] 
		ifFalse: [^ self deserialize: (response content) intoObjectOf: STError].