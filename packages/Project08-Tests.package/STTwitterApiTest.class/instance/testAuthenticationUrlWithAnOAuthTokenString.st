as yet unclassified
testAuthenticationUrlWithAnOAuthTokenString
	| url token |
	token := 'a token'.
	url := twitterApi authenticationUrlWith: token.
	
	self assert: url equals: 'https://api.twitter.com/oauth/authenticate?oauth_token=' , token, '&force_login=true'.