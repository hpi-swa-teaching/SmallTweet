as yet unclassified
testCurrentUser
	| user result |
	twitterApi webClient mock: '/1.1/account/verify_credentials.json' with: Fixture currentUserJsonResponse.
	
	result := twitterApi currentUser.
	self assert: result isSuccess.
	
	user := result value.
	self assert: user id equals: 38895958.
	self assert: user screenName equals: 'theSeanCook'.
	 