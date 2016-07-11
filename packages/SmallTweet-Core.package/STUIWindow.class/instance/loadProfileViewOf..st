as yet unclassified
loadProfileViewOf: aSTUser
	"Not yet supported by endlessScroll and refresh"
	| userTimeline|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := twitterApi userTimelineOf: aSTUser.
	
	(userTimeline isError)
		ifTrue: [ self inform: ('An Error occurred, while loading UserTimeline of User with Screenname:', aSTUser screenName) . 
			     ^ false].
	
	self 
		loadView: (STUIProfile with: userTimeline value from: aSTUser)
		as: #profileView 
		activate: #profileButton.