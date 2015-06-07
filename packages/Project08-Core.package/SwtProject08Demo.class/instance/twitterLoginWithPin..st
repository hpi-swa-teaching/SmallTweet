as yet unclassified
twitterLoginWithPin: aPin 
	| client url resp extra oauthSecret oauthToken |
	client := WebClient new.
	extra := Dictionary newFromPairs: {'oauth_verifier'. aPin}.
	url := 'https://api.twitter.com/oauth/access_token?oauth_verifier=' , aPin.
	resp := client
				httpPost: url
				content: (WebUtils encodeUrlEncodedForm: extra)
				type: 'application/x-www-form-urlencoded'
				do: [:req | WebUtils
						oAuthSign: req
						url: url
						extra: extra
						using: self oauthParams].
	resp isSuccess
		ifFalse: [^ 'Something went wrong' , resp content].
	oauthSecret := (((resp content findTokens: '&')
				at: 2)
				findTokens: '=')
				at: 2.
	self oauthParams add: 'oauth_token_secret' -> oauthSecret.
	oauthToken := (((resp content findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self oauthParams at: 'oauth_token' put: oauthToken.
	^ resp content