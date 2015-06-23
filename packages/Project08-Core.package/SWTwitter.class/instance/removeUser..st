as yet unclassified
removeUser: user

	accessSecret removeKey: user.
	accessToken removeKey: user.
	