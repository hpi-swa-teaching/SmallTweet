twitterAuthentication
twitterLoginWithPin: aPin 

	| client url response extra |
	client := self initializeClient.
	extra := Dictionary newFromPairs: {'oauth_verifier'. aPin}.
	url := 'https://api.twitter.com/oauth/access_token?oauth_verifier=' , aPin.
	response := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: self class oauthParams].
	
	((self checkResponse: response) < 1) ifTrue: [^self].
	^ self readUsernameFromWebResponse: response