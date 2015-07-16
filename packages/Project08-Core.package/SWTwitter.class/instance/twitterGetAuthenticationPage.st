twitterAuthentication
twitterGetAuthenticationPage
	| client url oauthToken|
	client := WebClient new.
	oauthToken := (((self requestOauthToken findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self class oauthParams add: 'oauth_token' -> oauthToken.
	url := 'https://api.twitter.com/oauth/authenticate?oauth_token=' , oauthToken, '&force_login=true'.
      ExternalWebBrowser new open: url asUrl.
	 ^ url