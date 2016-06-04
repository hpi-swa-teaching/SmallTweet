as yet unclassified
loadHomeTimelineView
	self 
		loadView: (STUIHomeTimeline with: twitterApi)
		as: #homeTimelineView 
		activate: #homeTimelineButton.