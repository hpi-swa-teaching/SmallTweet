as yet unclassified
addUser
	|aPin userName|
	
	aPin := settingsUi pinInput theText asString.
	settingsUi requestPinButton enabled: true.
	settingsUi sendPinButton enabled: false.
	(tweetWindowUi tweetButton enabled) ifFalse: (tweetWindowUi tweetButton enabled: true).
	(tweetWindowUi tweetAsPictureButton enabled) ifFalse: (tweetWindowUi tweetAsPictureButton enabled: true).
	userName := super addUser: aPin.
	settingsUi userList addText: userName.
	twitterUi userSelectionBox addText: userName.
	self changeCurrentUser.
	