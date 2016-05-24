authentication
authenticationUrlWith: anOAuthTokenString
	^ 'https://api.twitter.com/oauth/authenticate?oauth_token=' , anOAuthTokenString, '&force_login=true'.