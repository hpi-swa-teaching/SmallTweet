twitterFunctions
twitterShowTimelineInWindow

	(currentUser = '') ifTrue: [twitterUi textField theText: ''. ^self].
	^ self twitterShowTimelineInWindow: currentUser asString