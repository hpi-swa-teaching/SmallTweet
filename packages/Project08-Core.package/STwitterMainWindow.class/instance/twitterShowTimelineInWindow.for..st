twitterFunctions
twitterShowTimelineInWindow: type for: aTwitterName 
	| jsonObj |

	twitterUi textField clear.
	(aTwitterName = 'Please Login First') ifTrue: [
		twitterUi textField theText: 'You have to be logged in to view your timeline.'.
		^self
	].	
	jsonObj := self twitterGetTimeline: type for: aTwitterName.
	jsonObj
		do: [:j | twitterUi textField theText: twitterUi textField theText,
						(self tweetLinkUrls: (j at: 'text')) asHtmlText  , String cr , String cr]