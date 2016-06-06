as yet unclassified
loadMentionsView
	| mentionsTimeline |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	mentionsTimeline := twitterApi mentionsTimeline.
	mentionsTimeline isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
	
	self 
		loadView: (STUIMentions with: mentionsTimeline value)
		as: #mentionsView 
		activate: #mentionsButton.