authentication
authenticationUrl
	^ 'https://api.twitter.com/oauth/authenticate?oauth_token=' , self accessToken, '&force_login=true'.