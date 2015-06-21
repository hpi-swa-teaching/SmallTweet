as yet unclassified
addUser
	|aPin userName|
	
	aPin := settingsUi pinInput theText asString.
	settingsUi requestPinButton enabled: true.
	settingsUi sendPinButton enabled: false.
	userName := super addUser: aPin.
	settingsUi userList addText: userName.
	twitterUi userSelectionBox addText: userName.
	self changeCurrentUser.
	