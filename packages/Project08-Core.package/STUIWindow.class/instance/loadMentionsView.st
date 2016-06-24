as yet unclassified
loadMentionsView
	| mentionsTimeline mentionsTimelineView |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	mentionsTimeline := twitterApi mentionsTimeline.
	mentionsTimeline isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
	
	mentionsTimelineView := (STUIHomeTimeline with: mentionsTimeline value)
							twitterApi: (self twitterApi).
	self 
		loadView: mentionsTimelineView
		as: #mentionsView 
		activate: #mentionsButton.