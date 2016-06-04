as yet unclassified
testCurrentUser
	| user |
	twitterApi webClient mock: '/1.1/account/verify_credentials.json' with: Fixture currentUserJsonResponse.
	user := twitterApi currentUser.
	
	self assert: user id equals: 38895958.
	self assert: user screenName equals: 'theSeanCook'.
	 