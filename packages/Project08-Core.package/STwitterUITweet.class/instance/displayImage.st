as yet unclassified
displayImage
	"image := STMedia getImageFrom: 'https://pbs.twimg.com/profile_images/700741133475811329/gE_fcoeI_normal.jpg'."
	image := ImageMorph new color: Color black.
	image
		width: 100;
		height: 100;
		vResizing: #spaceFill;
		hResizing: #shrinkWrap.
	self addMorphBack: image.