as yet unclassified
from: aJsonObjectOrString
	| error |
	aJsonObjectOrString isString ifTrue: [
		error := aJsonObjectOrString] ifFalse: [
		error := (aJsonObjectOrString at: 'errors') ].
		
	^ (self new)
		errors: error;
		yourself 