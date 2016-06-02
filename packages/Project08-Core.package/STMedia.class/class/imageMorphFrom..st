as yet unclassified
imageMorphFrom: anUrl
|doc form image cachedForm|

	cachedForm := STImageStore default imageFormFrom: anUrl.
	cachedForm ifNotNil: [^ (ImageMorph new) setNewImageFrom: cachedForm].

	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	
	form := ImageReadWriter formFromStream: doc.
	
	STImageStore default cache: form from: anUrl. 
		
	image := ImageMorph new.
	image setNewImageFrom: form.
	^ image