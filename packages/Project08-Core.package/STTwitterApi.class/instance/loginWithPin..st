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
						using: self oAuthParams].
	self accessToken: ((((response content findTokens: '&') at: 1) findTokens: '=') at: 2).
	
	