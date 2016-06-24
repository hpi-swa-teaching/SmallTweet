authentication
requestAuthenticationToken
	| url parameters response |
	
	url := STTwitterApi apiUrl, '/oauth/request_token'.
	parameters := Dictionary newFromPairs: {'oauth_callback'. 'oob'}.
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: parameters using: self consumerParams].
	response isSuccess 
		ifTrue:
			[ | form |
			form := WebUtils decodeUrlEncodedForm: (response content).
			self accessToken: (form at: 'oauth_token').
			self accessTokenSecret: (form at: 'oauth_token_secret')].
	^ response isSuccess