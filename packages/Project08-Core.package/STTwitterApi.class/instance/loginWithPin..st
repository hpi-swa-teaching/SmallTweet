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
		ifTrue:
			[ | form |
			form := WebUtils decodeUrlEncodedForm: (response content).
			self accessToken: (form at: 'oauth_token').
			self accessTokenSecret: (form at: 'oauth_token_secret').
			^ form at: 'user_id'] 
		ifFalse: [ ^ 0 ]

	
	