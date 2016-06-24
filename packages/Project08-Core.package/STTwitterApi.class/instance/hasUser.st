initialize
hasUser
	userId ifNotNil: [^ true].
	^ false