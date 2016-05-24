as yet unclassified
testConsumerKeyConsumerSecretAccessToken
	| twitterApi token key secret |
	token := 'a token'.
	key := 'a key'.
	secret := 'a secret'.
	twitterApi := STTwitterApi consumerKey: key consumerSecret: secret accessToken: token.
	
	self assert: (twitterApi accessToken) equals: token.