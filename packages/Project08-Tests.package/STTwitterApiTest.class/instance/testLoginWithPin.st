as yet unclassified
testLoginWithPin
	| pin userId |
	pin := '123456'.
	twitterApi webClient mock:  '/oauth/access_token?oauth_verifier=', pin with: Fixture accessTokenResponse.
	userId := twitterApi loginWithPin: pin.
	
	self assert: (twitterApi accessToken) equals: '6253282-eWudHldSbIaelX7swmsiHImEL4KinwaGloHANdrY'.
	self assert: userId equals: '6253282'.