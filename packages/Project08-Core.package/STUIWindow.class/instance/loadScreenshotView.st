as yet unclassified
loadScreenshotView
	self twitterApi isUserLoggedin ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	STScreenshot useTwitterCursor.