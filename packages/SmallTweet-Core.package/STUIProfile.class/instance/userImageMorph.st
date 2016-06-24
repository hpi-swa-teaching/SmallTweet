as yet unclassified
userImageMorph
	| image |  
	image := STMedia getImageFrom: self user profileImageUrl.
	image ifNotNil: [
		image
			width: 200;
			height: 200].

	^ image