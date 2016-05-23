twitterFunctions
showJPGfrom: anUrl
|doc form image|
	doc := HTTPSocket httpGet: anUrl.
	doc binary; reset.
	form := ImageReadWriter formFromStream: doc.
	image := ImageMorph new.
	image setNewImageFrom: form.
	image openInWorld.