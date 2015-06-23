as yet unclassified
removeUser
	|user|
	
	user := settingsUi userList currentItem at: 'text'.
	super removeUser: user.
	settingsUi userList removeRowAt: settingsUi userList currentRow.
	twitterUi userSelectionBox clear.
	settingsUi userList do: [:userEntry | twitterUi userSelectionBox addText: (userEntry at: 'text')].