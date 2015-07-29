running
testRequestOauthToken
	Transcript show: (self demo requestOauthToken).

		self
		assert: (self demo requestOauthToken) = '{"screen_name":"SWTSpamaccount"}'.