accessing
oauthParamsTest1
	^OauthParamsTest1 ifNil: [OauthParamsTest1 := (Dictionary newFromPairs: {
		
		"Consumer Key and Secret"
		'oauth_consumer_key'.	self consumerKey.
		'oauth_consumer_secret'. 	self consumerSecret.

		"Oauth Stuff"
		'oauth_signature_method'. 'HMAC-SHA1'.
		'oauth_version'. '1.0'.
	})].