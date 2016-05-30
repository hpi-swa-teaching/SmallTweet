as yet unclassified
testPNGImageMorphFrom
"Tries to load PNG Image via http"
self shouldnt: [STMedia 
	imageMorphFrom: 'http://pbs.twimg.com/profile_images/554291778795229184/vb5c3U8k_normal.png'] raise: Exception description: 'Is your Graphics package bf339 or newer?'