helpers
accessTokenParams
	^ self consumerParams 
		add: 'oauth_token' -> (self accessToken ifNil: ['']);
		add: 'oauth_token_secret' -> (self accessTokenSecret ifNil: ['']);
		yourself.
		