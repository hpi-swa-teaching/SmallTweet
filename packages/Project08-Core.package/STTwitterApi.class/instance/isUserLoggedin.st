helpers
isUserLoggedin
	userId ifNotNil: [^ true].
	^ false