endpoints
userWithScreenName: aScreenNameString
	| url response |
	url := STTwitterApi apiUrl, '/1.1/users/show.json?screen_name=', aScreenNameString.
	response := self webClient 
					httpGet: url
					do: [:req | WebUtils
						oAuthSign: req
						url: url
						using: self accessTokenParams].
	response isSuccess 
		ifTrue: [^ self deserialize: (response content) intoObjectOf: STUser] 
		ifFalse: [^ self deserialize: (response content) intoObjectOf: STError].