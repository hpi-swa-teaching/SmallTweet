helpers
isAuthenticated
	"Checks if authentication works. If yes, some more information about the user is fetched"
	| userResult |
	userResult := self currentUser.
	userResult isSuccess
		ifTrue: [ | user |
				user := userResult value.
				self userId: user id.
				^ true ].
	^ false