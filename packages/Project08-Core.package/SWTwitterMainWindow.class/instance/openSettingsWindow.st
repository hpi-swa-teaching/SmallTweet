uiFunctions
openSettingsWindow

	(self class settingsInitialized < 1) ifTrue: [
		settingsUi := SettingsUi new initializePanel.
		self connect: (settingsUi requestPinButton) signal: #clicked: toSelector: #twitterGetAuthenticationPage. 
		self connect: (settingsUi sendPinButton) signal: #clicked: toSelector: #addUser. 
		self connect: (settingsUi removeUserButton) signal: #clicked: toSelector: #removeUser. 
		settingsWindow addMorph: settingsUi panel.
		settingsWindow openInWorld.
		settingsWindow extent: settingsUi panel extent + self class windowOffset.
		settingsWindow label: 'User Settings'.
		self class settingsInitialized: 1.
		^self
	].
	settingsWindow openInWorld.
	settingsWindow extent: settingsUi panel extent + self class windowOffset.
	