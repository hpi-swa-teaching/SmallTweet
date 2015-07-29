as yet unclassified
sendRequest: request contentBlock: contentBlock
	| webResponse |
	webResponse := (WebResponse protocol: 'HTTP/1.1' code: 200).
	webResponse 	content: '{"screen_name":"SWTSpamaccount"}'.
	^ webResponse