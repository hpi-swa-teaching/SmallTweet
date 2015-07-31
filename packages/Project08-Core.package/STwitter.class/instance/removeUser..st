twitterAuthentication
removeUser: user

	accessSecret removeKey: user.
	accessToken removeKey: user.
	