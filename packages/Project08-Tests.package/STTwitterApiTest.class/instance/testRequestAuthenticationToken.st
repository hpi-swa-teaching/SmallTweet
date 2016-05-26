as yet unclassified
testRequestAuthenticationToken
	| success |
	twitterApi webClient mock: '/oauth/request_token' with: Fixture oAuthTokenResponse.
	success := twitterApi requestAuthenticationToken.
	self assert: success.
	self assert: (twitterApi accessToken) equals: 'Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik'.
	self assert: (twitterApi accessTokenSecret) equals: 'Kd75W4OQfb2oJTV0vzGzeXftVAwgMnEK9MumzYcM'.