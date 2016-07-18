as yet unclassified
loadProfileViewOf: aSTUser
	| userTimeline|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := STUIUserTimeline new.
	
	userTimeline 
		twitterApi: self twitterApi;
		loadTweetsOf: aSTUser.
	
	self 
		loadView: (STUIProfile with: userTimeline from: aSTUser)
		as: #profileView 
		activate: #profileButton.