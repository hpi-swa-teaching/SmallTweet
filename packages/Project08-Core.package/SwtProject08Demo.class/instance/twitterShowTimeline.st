as yet unclassified
twitterShowTimeline
      |jsonObj|
      jsonObj := self twitterGetTimeline.
	jsonObj do: [:j | Transcript show: (j at: 'text'). Transcript cr. Transcript cr.]
	