as yet unclassified
twitterShowTimelineInWindow: aTwitterName 
	| jsonObj |
	jsonObj := self twitterGetTimeline: aTwitterName.
	jsonObj
		do: [:j | twitterUi textField theText: twitterUi textField theText
					, (j at: 'text') , String cr , String cr]