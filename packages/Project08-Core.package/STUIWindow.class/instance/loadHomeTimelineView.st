as yet unclassified
loadHomeTimelineView
	self 
		loadView: (STUIHomeTimeline with: twitterApi homeTimeline)
		as: #homeTimelineView 
		activate: #homeTimelineButton.