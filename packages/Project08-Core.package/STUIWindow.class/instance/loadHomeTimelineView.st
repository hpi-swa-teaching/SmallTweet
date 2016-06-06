as yet unclassified
loadHomeTimelineView
	self twitterApi isUserLoggedin ifFalse: [
		self inform: 'Please login first.'. 
		^ false].

	self 
		loadView: (STUIHomeTimeline with: twitterApi homeTimeline)
		as: #homeTimelineView 
		activate: #homeTimelineButton.