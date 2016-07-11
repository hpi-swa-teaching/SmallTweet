as yet unclassified
loadHomeTimelineView
	| homeTimelineView |
	homeTimelineView := STUIHomeTimeline new.
							
	homeTimelineView 
		twitterApi: (self twitterApi);
		loadTweets.
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.