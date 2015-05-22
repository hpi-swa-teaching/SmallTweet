initialize
initializeOAuth

	self oauthParams: (Dictionary newFromPairs: {
		"Accress Token and Secret"
		'oauth_token'. self class accessToken.
		'oauth_token_secret'. self class accessSecret.
		
		"Consumer Key and Secret"
		'oauth_consumer_key'.	self class consumerKey.
		'oauth_consumer_secret'. 	self class consumerSecret.

		"Oauth Stuff"
		'oauth_signature_method'. 'HMAC-SHA1'.
		'oauth_version'. '1.0'.
	}).
	
	