as yet unclassified
loadProfileView
	| userTimeline currentUser|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := twitterApi userTimeline.
	userTimeline := STUIUserTimeline new.
	
	userTimeline
		twitterApi: self twitterApi;
		loadTweets.
	
	currentUser := twitterApi currentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	
	self 
		loadView: (STUIProfile with: userTimeline value from: currentUser value)
		as: #profileView 
		activate: #profileButton.