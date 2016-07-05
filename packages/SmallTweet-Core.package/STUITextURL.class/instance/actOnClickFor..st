as yet unclassified
actOnClickFor: anObject
|username|
	(url beginsWith: 'smallTweetUser:')ifTrue:[
		username := url copyFrom: ('smallTweetUser:'size +1) to: (url size).
		STUIWindow instance displayUser: username]
	ifFalse: [STUtils openLink: url].
	^ true.