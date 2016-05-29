as yet unclassified
loadProfileView
	(loadedViews includesKey: #profileView) ifFalse: [
		loadedViews at: #profileView put: STwitterUIProfile new.
	].
	self updateViewMorph:(loadedViews at: #profileView).