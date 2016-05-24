authentication
requestOAuthToken
	| url parameters response |
	
	url := STTwitterApi apiUrl, '/oauth/request_token'.
	parameters := Dictionary newFromPairs: {'oauth_callback'. 'oob'}.
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: parameters using: self oAuthParams].
	response isSuccess 
		ifTrue: [^ (((response content findTokens: '&') at: 1) findTokens: '=') at: 2] 
		ifFalse: [^ '']