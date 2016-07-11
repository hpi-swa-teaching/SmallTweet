as yet unclassified
loadMentionsView
	| mentionsTimelineView |
	mentionsTimelineView := STUIMentionsTimeline new.
							
	mentionsTimelineView 
		twitterApi: (self twitterApi);
		loadTweets.
	
	self 
		loadView: mentionsTimelineView
		as: #mentionsView
		activate: #mentionsButton.