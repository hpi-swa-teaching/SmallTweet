as yet unclassified
loadSettingsView
	self 
		loadView: (STUISettings with: twitterApi)
		as: #settingsView 
		activate: #settingsButton.