helpers
accessTokenParams
	^ self consumerParams 
		add: 'oauth_token' -> self accessToken;
		add: 'oauth_token_secret' -> self accessTokenSecret;
		yourself.
		