as yet unclassified
testAccessTokenParams
	| params accessToken accessTokenSecret |
	accessToken := 'a token'.
	accessTokenSecret := 'a secret'.
	twitterApi accessToken: accessToken.
	twitterApi accessTokenSecret: accessTokenSecret.
	params := twitterApi accessTokenParams.
	
	self assert: (params at: 'oauth_consumer_key') equals: twitterApi consumerKey.
	self assert: (params at: 'oauth_consumer_secret') equals: twitterApi consumerSecret.
	self assert: (params at: 'oauth_signature_method') equals: 'HMAC-SHA1'.
	self assert: (params at: 'oauth_version') equals: '1.0'.
	self assert: (params at: 'oauth_token') equals: accessToken.
	self assert: (params at: 'oauth_token_secret') equals: accessTokenSecret.