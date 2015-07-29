running
testGetTimeline

	self 	assert: ((self demo twitterGetTimeline: 'SWTSpamaccount')		isKindOf: JsonObject).