as yet unclassified
testConsumerKeyConsumerSecretAccessToken
	| twitterApi token key secret tokenSecret |
	token := 'a token'.
	tokenSecret := 'secret'.
	key := 'a key'.
	secret := 'a secret'.
	twitterApi := STTwitterApi consumerKey: key consumerSecret: secret accessToken: token accessTokenSecret: tokenSecret.
	
	self assert: (twitterApi accessToken) equals: token.