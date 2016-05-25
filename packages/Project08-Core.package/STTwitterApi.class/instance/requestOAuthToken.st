authentication
requestOAuthToken
	| url parameters response |
	
	url := STTwitterApi apiUrl, '/oauth/request_token'.
	parameters := Dictionary newFromPairs: {'oauth_callback'. 'oob'}.
	response := webClient httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: parameters)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: parameters using: self consumerParams].
	response isSuccess 
		ifTrue: [^ (WebUtils decodeUrlEncodedForm: (response content)) at: 'oauth_token'] 
		ifFalse: [^ '']