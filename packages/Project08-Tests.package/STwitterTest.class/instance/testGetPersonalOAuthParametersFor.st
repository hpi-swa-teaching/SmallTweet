running
testGetPersonalOAuthParametersFor
	| paramters |
	paramters := self demo getPersonalOAuthParametersFor: 'SWTSpamaccount'.
	self assert: (paramters at: 'oauth_token')
			= self demo class testToken.
	self assert: (paramters at: 'oauth_token_secret')
			= self demo class testTokenSecret.