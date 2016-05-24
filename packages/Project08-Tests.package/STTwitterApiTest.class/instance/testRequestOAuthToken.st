as yet unclassified
testRequestOAuthToken
	| token |
	twitterApi webClient mock: '/oauth/request_token' with: Fixture oAuthTokenResponse.
	token := twitterApi requestOAuthToken.
	self assert: token equals: 'Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik'.
	