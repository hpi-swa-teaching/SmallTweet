helpers
deserialize: aString intoCollectionOf: aClass
	| parsedJson |
	parsedJson := (Json new stream: (ReadStream on: aString)) readAny.
	^ parsedJson collect: [ :jsonObject | aClass from: jsonObject ].