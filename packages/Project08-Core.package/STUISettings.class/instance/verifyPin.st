as yet unclassified
verifyPin
	| pin |
	pin := pinTextField theText asString.
	(twitterApi loginWithPin: pin)
		ifTrue: [resultTextLabel contents: ('<i>Successfully logged in as ', twitterApi screenName, '</i>') asHtmlText]
		ifFalse: [resultTextLabel contents: '<i>Login failed. Please try again</i>' asHtmlText].
