as yet unclassified
updateViewMorph: aMorph
	scrollMorph scroller removeMorph: viewMorph.	
	viewMorph := aMorph.
	
	self addViewMorph.
