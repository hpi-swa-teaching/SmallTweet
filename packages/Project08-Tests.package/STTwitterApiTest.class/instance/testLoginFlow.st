as yet unclassified
testLoginFlow
	"Tests the complete login flow. Web requests are mocked using a dummy webclient."
	| authUrl pin |
	twitterApi := STTwitterApi consumerKey: 'a key' consumerSecret: 'a secret'.
	twitterApi webClient: WebClientMock new.
	
	"Request a new token from twitter"
	twitterApi webClient mock: '/oauth/request_token' with: Fixture oAuthTokenResponse.
	self assert: twitterApi requestAuthenticationToken.
	
	"Redirect user to auth url and let him fill in the pin"
	authUrl := twitterApi authenticationUrl.
	self assert: authUrl equals: 'https://api.twitter.com/oauth/authenticate?oauth_token=' , twitterApi accessToken, '&force_login=true'.
	
	"Fill in pin from authentication page"
	pin := '123456'.
	twitterApi webClient mock:  '/oauth/access_token?oauth_verifier=', pin with: Fixture accessTokenResponse.
	self assert: (twitterApi loginWithPin: pin).
	self assert: (twitterApi userId) equals: '6253282'
