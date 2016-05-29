as yet unclassified
loadSettingsView
	(loadedViews includesKey: #settingsView) ifFalse: [
		loadedViews at: #settingsView put: STwitterUISettings new.
	].
	self updateViewMorph:(loadedViews at: #settingsView).