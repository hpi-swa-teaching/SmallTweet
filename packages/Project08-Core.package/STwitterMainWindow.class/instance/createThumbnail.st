uiFunctions
createThumbnail

	|form aspectRatio|

	form := Form fromFileNamed: 'upload.png'.
	aspectRatio := form width / form height.
	tweetWindowUi thumbnail newForm: form; scalePoint: (self class windowWidth/form width@(self class windowWidth/form width)).
