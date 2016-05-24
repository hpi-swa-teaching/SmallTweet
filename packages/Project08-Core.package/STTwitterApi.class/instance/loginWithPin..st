authentication
loginWithPin: aPinString
	| client url response parameters |
	parameters := Dictionary newFromPairs: {'oauth_verifier'. aPinString}.
	url := STTwitterApi apiUrl, '/oauth/access_token?oauth_verifier=' , aPinString.
	response := webClient 
					httpPost: url
					content: (WebUtils encodeUrlEncodedForm: parameters)
					type: 'application/x-www-form-urlencoded'
					do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: parameters
						using: self consumerParams].
	response isSuccess 
		ifTrue: [	self accessToken: ((((response content findTokens: '&') at: 1) findTokens: '=') at: 2).
				self accessTokenSecret: ((((response content findTokens: '&') at: 2) findTokens: '=') at: 2).
				^ ((((response content findTokens: '&') at: 3) findTokens: '=') at: 2).] 
		ifFalse: [ ^ 0 ]

	
	