as yet unclassified
sendRequest: request contentBlock: contentBlock
	| content |
	content := jsonFixturesMap at: (request url) ifAbsent: [
		^ (WebResponse protocol: 'HTTP/1.1' code: 500) content: '' ].
	
	^ (WebResponse protocol: 'HTTP/1.1' code: 200)
		content: content.