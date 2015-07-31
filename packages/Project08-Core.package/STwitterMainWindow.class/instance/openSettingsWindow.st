uiFunctions
openSettingsWindow
	
	self class settingsInitialized < 1
		ifTrue: [^self setupSettingsWindow].
	settingsWindow openInWorld; extent: settingsUi panel extent + self class windowOffset