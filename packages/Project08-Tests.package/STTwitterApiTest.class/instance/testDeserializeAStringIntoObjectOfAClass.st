as yet unclassified
testDeserializeAStringIntoObjectOfAClass
	| objectJson object |
	objectJson := Fixture notFoundJsonResponse.
	object := twitterApi deserialize: objectJson intoObjectOf: STError.
	
	self assert: (((object errors) at: 1) at: 'code') equals: 34.
	self assert: (((object errors) at: 1) at: 'message') equals: 'Sorry, that page does not exist'.