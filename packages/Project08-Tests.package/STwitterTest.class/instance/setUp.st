running
setUp
	super setUp.
	self demo: STwitter new.
	STwitter flagForTest: 1.
	demo accessToken: STwitter testToken for: 'SWTSpamaccount'.
	demo accessSecret: STwitter testTokenSecret  for: 'SWTSpamaccount'.