uiFunctions
createThumbnailFrom: aForm

	|aspectRatio|

	aspectRatio := aForm width / aForm height.
	tweetWindowUi thumbnail newForm: aForm; scalePoint: (self class windowWidth/aForm width@(self class windowWidth/aForm width)).
