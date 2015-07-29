twitterFunctions
twitterShowTimelineInWindow: aTwitterName 
	| jsonObject |

	twitterUi textField clear.
	(aTwitterName = 'Please Login First') ifTrue: [
		twitterUi textField theText: 'You have to be logged in to view your timeline.'.
		^self
	].	
	jsonObject := self twitterGetTimeline: aTwitterName.
	jsonObject
		do: [:j | twitterUi textField theText: twitterUi textField theText,
						(j at: 'text') , String cr , String cr]