userManagement
changeCurrentUser

	self currentUser: (self twitterUi userSelectionBox currentText asString).
	self twitterShowTimelineInWindow.