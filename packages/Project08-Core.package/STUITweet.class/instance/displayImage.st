as yet unclassified
displayImage
	image := STMedia getImageFrom: self tweet user profileImageUrl.
	image ifNotNilDo: [
	image
		width: 100;
		height: 100;
		vResizing: #spaceFill;
		hResizing: #shrinkWrap.
	self addMorphBack: image]