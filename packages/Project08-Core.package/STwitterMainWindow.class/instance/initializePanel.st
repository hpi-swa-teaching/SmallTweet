initialize
initializePanel

	mainWindow := PluggableSystemWindow new.
	settingsWindow := PluggableSystemWindow new.
	tweetWindow := PluggableSystemWindow new.
	tweetWindowUi := STweetWindowUi new initializePanel.
	twitterUi := STwitterUi new initializePanel.
	mainWindow addMorph: twitterUi panel.
	mainWindow label: 'Twitter'