as yet unclassified
testLoginWithPin
	| pin |
	pin := '123456'.
	twitterApi webClient mock:  '/oauth/access_token?oauth_verifier=', pin with: Fixture accessTokenResponse.
	twitterApi loginWithPin: pin.
	
	self assert: (twitterApi accessToken) equals: '6253282-eWudHldSbIaelX7swmsiHImEL4KinwaGloHANdrY'.