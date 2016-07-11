as yet unclassified
loadHomeTimelineViewNextPage
	| newTweets homeTimelineView |
	
	(self loadedViews at: #homeTimelineView) refreshTweets.
	"
	homeTimelineView := self loadedViews at: #homeTimelineView.
	newTweets := twitterApi homeTimelineWith: STSettingsStore default tweetNum andMax: (homeTimelineView minID - 1).
	newTweets isError  
	ifTrue: [self inform: 'An error occurred'. 
			^ false].
		
	Transcript show: newTweets value size.
		
	homeTimelineView appendTweets: newTweets value.
	
	homeTimelineView := (STUIHomeTimeline with: homeTimelineView tweets)
							twitterApi: (self twitterApi).
	
	homeTimelineView render. 
	
	self 
		forceLoadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.
	"	
	
	
		