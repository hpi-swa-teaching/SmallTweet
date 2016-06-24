endpoints
homeTimeline
	| url response |
	url := STTwitterApi apiUrl, '/1.1/statuses/home_timeline.json'.
	response := self webClient 
					httpGet: url
					do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: self accessTokenParams].
	response isSuccess 
		ifTrue: [^ STResult value: (self deserialize: (response content) intoCollectionOf: STTweet)] 
		ifFalse: [^ STResult error: (self deserialize: (response content) intoObjectOf: STError)].