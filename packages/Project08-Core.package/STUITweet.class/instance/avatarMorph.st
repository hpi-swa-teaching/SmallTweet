as yet unclassified
avatarMorph
	image := STMedia getImageFrom: self tweet user profileImageUrl.
	image ifNotNil: [
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]