twitterFunctions
twitterShowUserTimelineInWindow

	(currentUser = '') ifTrue: [twitterUi textField theText: ''. ^self].
	^ self twitterShowTimelineInWindow: 'user' for: currentUser asString