as yet unclassified
loadHomeTimelineView
	| homeTimeline |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	homeTimeline := twitterApi homeTimeline.
	homeTimeline isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].

	self 
		loadView: (STUIHomeTimeline with: homeTimeline value)
		as: #homeTimelineView 
		activate: #homeTimelineButton.