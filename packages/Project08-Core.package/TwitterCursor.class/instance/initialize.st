as yet unclassified
initialize 

	Cursor square showWhile: [Sensor waitButton].
	^self getContentAtPoint: Sensor waitButton.