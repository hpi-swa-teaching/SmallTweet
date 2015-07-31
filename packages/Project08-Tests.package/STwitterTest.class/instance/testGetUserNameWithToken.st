running
testGetUserNameWithToken
	self assert: ((self demo twitterGetUserNameWithToken: self demo class testToken Secret: self demo class testTokenSecret ) = 'SWTSpamaccount')