twitterAuthentication
requestOauthToken

	|client url response extra|

	client := self initializeClient.
	
	url := 'https://api.twitter.com/oauth/request_token'.
	extra := Dictionary newFromPairs: {
		'oauth_callback'. 'oob'.
	}.
	response := client httpPost: url 
			content: (WebUtils encodeUrlEncodedForm: extra)
			type: 'application/x-www-form-urlencoded'
			do:[:req | WebUtils oAuthSign: req url: url extra: extra using: self class oauthParams].
	
	((self checkResponse: response) < 1) ifTrue: [^self].
	^response content 