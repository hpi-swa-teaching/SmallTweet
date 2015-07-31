twitterFunctions
twitterTweet: aTwitterUser with: text
	| url response extra tweet |
	tweet := text.
	tweet size > 140
		ifTrue: [self autoConvertLongTextToImageFor: aTwitterUser.
			^self].
	url := self class apiUrl , '/statuses/update.json'.
	extra := Dictionary newFromPairs: {'status'. tweet}.
	response := self postRequestFor: aTwitterUser on: url with: extra. 

	((self checkResponse: response) < 1) ifTrue: [^self].
	^ 0