as yet unclassified
addRequestPinSection
	| requestButton |
	self addMorphBack: (TextMorph new contents: '1. Request a pin' asHtmlText).
	requestButton := UiPushButton new.
	requestButton text: 'Open'.
	self
		connect: requestButton
 		signal: #clicked:
 		toSelector: #openAuthenticationUrl.
	self addMorphBack: requestButton.