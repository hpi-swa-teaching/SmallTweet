twitterAuthentication
twitterLoginWithPin: aPin 

	| client url resp extra oauthSecret oauthToken userName |
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
						using: self class oauthParams].
	resp isSuccess
		ifFalse: [Transcript show: 'Something went wrong' , resp content. ^self].
	oauthSecret := (((resp content findTokens: '&')
				at: 2)
				findTokens: '=')
				at: 2.
	oauthToken := (((resp content findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	userName := self twitterGetUserNameWithToken: oauthToken Secret: oauthSecret. 
	self accessToken: oauthToken for: userName.
	self accessSecret: oauthSecret for: userName.
	^ userName