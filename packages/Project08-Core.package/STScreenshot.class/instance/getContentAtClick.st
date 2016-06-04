as yet unclassified
getContentAtClick
	| point |
	Cursor crossHair showWhile: [point := Sensor waitButton].
	^self getContentAtPoint: point
