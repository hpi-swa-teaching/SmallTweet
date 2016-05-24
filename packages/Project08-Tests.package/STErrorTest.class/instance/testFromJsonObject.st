as yet unclassified
testFromJsonObject
	| errorJson jsonObject error |
	
	errorJson := '{ "errors": [{ "message": "Sorry, that page does not exist", "code": 34}]}'.
	jsonObject := (Json new stream: (ReadStream on:  errorJson)) readAny.
	error := STError from: jsonObject.

	self assert: (error errors) equals: (jsonObject at: 'errors').