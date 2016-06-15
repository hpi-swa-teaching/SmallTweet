endpoints
retweetStatusWithId: anInteger
	| url response |
	url := STTwitterApi apiUrl, '/1.1/statuses/retweet/', anInteger ,'.json'.
	response := self webClient 
					httpPost: url
					content: #()
					type: nil
					do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: self accessTokenParams].
	response isSuccess 
		ifTrue: [^ STResult value: (self deserialize: (response content) intoObjectOf: STTweet)] 
		ifFalse: [^ STResult error: (self deserialize: (response content) intoObjectOf: STError)].