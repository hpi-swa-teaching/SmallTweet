as yet unclassified
sendRequest: request contentBlock: contentBlock
	| webResponse content |
	content := contentMap at: (request url) ifAbsent: [
		^(WebResponse protocol: 'HTTP/1.1' code: 404) content: ''].
	webResponse := (WebResponse protocol: 'HTTP/1.1' code: 200).
	webResponse content: content.
	
	^ webResponse