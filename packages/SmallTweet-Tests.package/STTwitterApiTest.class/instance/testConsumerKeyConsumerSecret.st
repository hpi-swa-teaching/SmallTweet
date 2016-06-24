as yet unclassified
testConsumerKeyConsumerSecret
	| twitterApi key secret |
	key := 'a key'.
	secret := 'a secret'.
	twitterApi := STTwitterApi consumerKey: key consumerSecret: secret.
	
	self assert: (twitterApi consumerKey) equals: key.
	self assert: (twitterApi consumerSecret) equals: secret.