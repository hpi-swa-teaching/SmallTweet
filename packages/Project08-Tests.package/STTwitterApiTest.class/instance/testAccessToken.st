as yet unclassified
testAccessToken
	| twitterApi token |
	token := 'a token'.
	twitterApi := STTwitterApi accessToken: token.
	
	self assert: (twitterApi accessToken) equals: token.