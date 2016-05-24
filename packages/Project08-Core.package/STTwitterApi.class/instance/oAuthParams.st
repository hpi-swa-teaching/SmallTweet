helpers
oAuthParams
	^ Dictionary newFromPairs: {
		'oauth_consumer_key'. self consumerKey.
		'oauth_consumer_secret'. self consumerSecret.
		'oauth_signature_method'. 'HMAC-SHA1'.
		'oauth_version'. '1.0'.}.