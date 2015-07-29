running
setUp
	super setUp.
	self demo: SWTwitter new.
	SWTwitter flagForTest: 1.
	demo accessToken: SWTwitter testToken for: 'SWTSpamaccount'.
	demo accessSecret: SWTwitter testTokenSecret  for: 'SWTSpamaccount'.