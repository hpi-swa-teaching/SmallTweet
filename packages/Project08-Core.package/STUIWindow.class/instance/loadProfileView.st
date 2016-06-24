as yet unclassified
loadProfileView
	| userTimeline currentUser|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := twitterApi userTimeline.
	currentUser := twitterApi currentUser.
	
	(userTimeline isError) | (currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	
	self 
		loadView: (STUIProfile with: userTimeline value from: currentUser value)
		as: #profileView 
		activate: #profileButton.