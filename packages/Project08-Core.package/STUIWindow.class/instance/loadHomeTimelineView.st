as yet unclassified
loadHomeTimelineView
	| homeTimeline homeTimelineView |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	homeTimeline := twitterApi homeTimeline.
	homeTimeline isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	homeTimelineView := (STUIHomeTimeline with: homeTimeline value)
							twitterApi: (self twitterApi).
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.