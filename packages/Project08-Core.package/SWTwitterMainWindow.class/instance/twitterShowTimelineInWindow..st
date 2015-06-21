twitterFunctions
twitterShowTimelineInWindow: aTwitterName 
	| jsonObj |

	twitterUi textField clear.	
	jsonObj := self twitterGetTimeline: aTwitterName.
	jsonObj
		do: [:j | twitterUi textField theText: twitterUi textField theText
					, (j at: 'text') , String cr , String cr]