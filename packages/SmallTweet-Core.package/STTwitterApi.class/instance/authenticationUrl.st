authentication
authenticationUrl
	^ STTwitterApi apiUrl, '/oauth/authenticate?oauth_token=' , self accessToken, '&force_login=true'.