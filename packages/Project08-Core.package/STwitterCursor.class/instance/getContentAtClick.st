eventHandling
getContentAtClick
	|point|

	self class bird showWhile: [point := Sensor waitButton].
	^self getContentAtPoint: point