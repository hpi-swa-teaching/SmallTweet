twitterFunctions
twitterTweet: aTwitterUser withMedia: aMediaId withText: aText

	| url response extra tweet|

	tweet := aText.
	url := self class apiUrl, '/statuses/update.json'.
	extra := Dictionary newFromPairs: {
		'status'. tweet.
		'media_ids'. aMediaId.
	}.
	response := self postRequestFor: aTwitterUser on: url  with: extra. 

	((self checkResponse: response) < 1) ifTrue: [^self].	
	^0