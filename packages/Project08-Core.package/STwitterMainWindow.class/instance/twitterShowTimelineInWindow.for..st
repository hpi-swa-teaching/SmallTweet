twitterFunctions
twitterShowTimelineInWindow: type for: aTwitterName 
	| jsonObj |

	twitterUi textField clear.
	(aTwitterName = 'Please Login First') ifTrue: [
		twitterUi textField theText: 'You have to be logged in to view your timeline.'.
		^self
	].	
	jsonObj := self twitterGetTimeline: type for: aTwitterName.
	self getUserProfilesFromTimeline: jsonObj.
	jsonObj
		do: [:j | twitterUi textField theText: twitterUi textField theText,
						(j at: 'text') , String cr , String cr. ].