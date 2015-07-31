twitterAuthentication
twitterGetAuthenticationPage
	| client url oauthToken hostOS|
	client := self initializeClient.
	oauthToken := (((self requestOauthToken findTokens: '&')
				at: 1)
				findTokens: '=')
				at: 2.
	self class oauthParams add: 'oauth_token' -> oauthToken.
	url := 'https://api.twitter.com/oauth/authenticate?oauth_token=' , oauthToken, '&force_login=true'.
	hostOS := Smalltalk platformName.
	(hostOS = 'Mac OS')
          ifTrue: [STMacShell new openLinkInBrowser: url]
	ifFalse: [ExternalWebBrowser new open: url asUrl].
	 ^ url