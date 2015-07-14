as yet unclassified
initialize 

	self class bird showWhile: [Sensor waitButton].
	^self getContentAtPoint: Sensor waitButton.