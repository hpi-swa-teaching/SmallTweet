as yet unclassified
testJPEGImageMorphFrom
"Tries to load JPEG Image via http"
self shouldnt: [STMedia 
	imageMorphFrom: 'http://pbs.twimg.com/media/Cji9N9FWEAAQkjM.jpg'] raise: Exception description: 'Check if you are connected to the Internet'