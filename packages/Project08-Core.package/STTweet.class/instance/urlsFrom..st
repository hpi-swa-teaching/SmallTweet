accessing
urlsFrom: aJsonObject
	|extractedUrl|
	self urls: (Bag new).
	aJsonObject do:[:urlJson | 
		extractedUrl := STUrl from:(urlJson).
		self urls add: extractedUrl
		]