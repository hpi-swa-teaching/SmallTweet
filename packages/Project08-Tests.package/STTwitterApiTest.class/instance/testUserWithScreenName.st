as yet unclassified
testUserWithScreenName
	| user screenName |
	screenName := 'TwitterDev'.
	twitterApi webClient mock: '/1.1/users/show.json?screen_name=', screenName with: Fixture userWithScreenNameJsonResponse.
	user := twitterApi userWithScreenName: screenName.
	
	self assert: user id equals: 2244994945.
	self assert: user screenName equals: screenName.
	 