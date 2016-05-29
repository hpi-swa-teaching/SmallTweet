as yet unclassified
loadHomeTimelineView
	(loadedViews includesKey: #homeTimelineView) ifFalse: [
		loadedViews at: #homeTimelineView put: STwitterUIHomeTimeline new.
	].
	self updateViewMorph:(loadedViews at: #homeTimelineView).