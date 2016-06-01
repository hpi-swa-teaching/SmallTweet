as yet unclassified
imageMorphFrom: anUrl
|doc form image cache|

	cache := STImageStore default getFormFrom: anUrl.
	cache ifNotNil: [^ (ImageMorph new) setNewImageFrom: cache].

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	form := ImageReadWriter formFromStream: doc.
	
	STImageStore default cache: form from: anUrl. 
		
	image := ImageMorph new.
	image setNewImageFrom: form.
	^ image