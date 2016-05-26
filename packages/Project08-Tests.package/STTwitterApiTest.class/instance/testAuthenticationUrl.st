as yet unclassified
testAuthenticationUrl
	| url token |
	token := 'a token'.
	twitterApi accessToken: token.
	url := twitterApi authenticationUrl.
	
	self assert: url equals: 'https://api.twitter.com/oauth/authenticate?oauth_token=' , token, '&force_login=true'.