twitterAuthentication
twitterLoginWithPin: aPin 

	| client url response extra oauthSecret oauthToken |
	client := WebClient new.
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
	response isSuccess
		ifFalse: [^ 'Something went wrong' , response content].
	oauthSecret := (((response content findTokens: '&')
				at: 2)
				findTokens: '=')
				at: 2.
	self class oauthParams add: 'oauth_token_secret' -> oauthSecret.
	oauthToken := (((response content findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self class oauthParams at: 'oauth_token' put: oauthToken.
	^ response content