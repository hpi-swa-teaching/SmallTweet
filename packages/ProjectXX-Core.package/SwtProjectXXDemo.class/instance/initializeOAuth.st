initialize
initializeOAuth

	self oauthParams: (Dictionary newFromPairs: {
		"Consumer Key and Secret"
		'oauth_consumer_key'.	self class consumerKey.
		'oauth_consumer_secret'. 	self class consumerSecret.

		"Oauth Stuff"
		'oauth_signature_method'. 'HMAC-SHA1'.
		'oauth_version'. '1.0'.
	}).
	
	