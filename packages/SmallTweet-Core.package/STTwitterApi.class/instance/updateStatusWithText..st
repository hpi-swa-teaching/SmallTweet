endpoints
updateStatusWithText: aTextString
	"Also known as tweeting"
	| url response content |
	url := STTwitterApi apiUrl, '/1.1/statuses/update.json'.
	content :=  Dictionary newFromPairs: {'status'. aTextString}.
	response := self webClient 
					httpPost: url
					content: (WebUtils encodeUrlEncodedForm: content)
					type: 'application/x-www-form-urlencoded' 
					do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: content
						using: self accessTokenParams].
	response isSuccess 
		ifTrue: [^ STResult value: (self deserialize: (response content) intoObjectOf: STTweet)] 
		ifFalse: [^ STResult error: (self deserialize: (response content) intoObjectOf: STError)].