as yet unclassified
sendRequest: request contentBlock: contentBlock
	mockUrl = request rawUrl 
		ifTrue: [ ^(WebResponse protocol: 'HTTP/1.1' code: 200) content: mockContent]
		ifFalse: [ ^(WebResponse protocol: 'HTTP/1.1' code: 500) content: '']