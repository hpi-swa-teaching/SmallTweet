as yet unclassified
testConsumerKeyConsumerSecretAccessTokenAccessTokenSecret
	| twitterApi token key secret tokenSecret|
	token := 'a token'.
	key := 'a key'.
	secret := 'a secret'.
	tokenSecret := 'a token secret'.
	twitterApi := STTwitterApi consumerKey: key consumerSecret: secret accessToken: token accessTokenSecret: tokenSecret.
	
	self assert: (twitterApi accessToken) equals: token.
	self assert: (twitterApi accessTokenSecret) equals: tokenSecret.