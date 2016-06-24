as yet unclassified
testLoginWithPin
	| pin success |
	pin := '123456'.
	twitterApi webClient mock:  '/oauth/access_token?oauth_verifier=', pin with: Fixture accessTokenResponse.
	success := twitterApi loginWithPin: pin.
	
	self assert: success. 
	self assert: (twitterApi accessToken) equals: '6253282-eWudHldSbIaelX7swmsiHImEL4KinwaGloHANdrY'.
	self assert: (twitterApi accessTokenSecret) equals: '2EEfA6BG3ly3sR3RjE0IBSnlQu4ZrUzPiYKmrkVU'.
	self assert: (twitterApi userId) equals: '6253282'.
	self assert: (twitterApi screenName) equals: 'twitterapi'.