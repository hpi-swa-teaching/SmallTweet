twitterFunctions
twitterShowNewsTimelineInWindow

	(currentUser = '') ifTrue: [twitterUi textField theText: ''. ^self].
	^ self twitterShowTimelineInWindow: 'home' for: currentUser asString