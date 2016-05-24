as yet unclassified
testConsumerParams
	| params |
	params := twitterApi consumerParams .
	
	self assert: (params at: 'oauth_consumer_key') equals: twitterApi consumerKey.
	self assert: (params at: 'oauth_consumer_secret') equals: twitterApi consumerSecret.
	self assert: (params at: 'oauth_signature_method') equals: 'HMAC-SHA1'.
	self assert: (params at: 'oauth_version') equals: '1.0'.