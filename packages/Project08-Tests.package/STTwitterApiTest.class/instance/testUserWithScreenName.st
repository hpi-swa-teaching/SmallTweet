as yet unclassified
testUserWithScreenName
	| user screenName result |
	screenName := 'TwitterDev'.
	twitterApi webClient mock: '/1.1/users/show.json?screen_name=', screenName with: Fixture userWithScreenNameJsonResponse.
	
	result := twitterApi userWithScreenName: screenName.
	self assert: result isSuccess.

	user := result value.	
	self assert: user id equals: 2244994945.
	self assert: user screenName equals: screenName.
	 