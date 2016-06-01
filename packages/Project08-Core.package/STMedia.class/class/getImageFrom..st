as yet unclassified
getImageFrom: anUrl
|doc form image len suffix cache|
	anUrl ifNil: [^nil].
	
	cache := STImageStore default getFormFrom: anUrl.
	cache ifNotNil: [^ (ImageMorph new) setNewImageFrom: cache].
	
	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	len := anUrl size.
	suffix := anUrl copyFrom: len - 2 to: len.
	
	suffix = 'jpg' ifTrue:
		[form := ImageReadWriter formFromStream: doc.].
	suffix = 'png' ifTrue:
		[form := PNGReadWriter formFromStream: doc.].
	
	STImageStore default cache: form from: anUrl. 
	
	image := ImageMorph new.
	image setNewImageFrom: form.
	
	^ image