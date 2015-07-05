as yet unclassified
getContentAtPoint: aPoint 

	World submorphs
		do: [:submorph | (self isPoint: aPoint withinBounds: submorph bounds)
				ifTrue: [^submorph]]