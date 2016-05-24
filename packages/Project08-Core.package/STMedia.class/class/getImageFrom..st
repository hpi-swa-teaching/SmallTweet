as yet unclassified
getImageFrom: anUrl
|doc form image len suffix|

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	len := anUrl size.
	suffix := anUrl copyFrom: len - 2 to: len.
	
	suffix = 'jpg' ifTrue:
		[form := ImageReadWriter formFromStream: doc.].
	suffix = 'png' ifTrue:
		[form := PNGReadWriter formFromStream: doc.].
	
	image := ImageMorph new.
	image setNewImageFrom: form.
	^ image