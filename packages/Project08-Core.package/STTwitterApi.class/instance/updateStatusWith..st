endpoints
updateStatusWith: aTextString
	"Also known as tweeting"
	| url response content |
	self isUserLoggedin ifFalse: [^ STError from: 'Not loggedin.'].
	
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
		ifTrue: [^ self deserialize: (response content) intoCollectionOf: STTweet] 
		ifFalse: [^ self deserialize: (response content) intoObjectOf: STError].