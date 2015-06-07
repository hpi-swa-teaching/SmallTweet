as yet unclassified
twitterShowTimeline: aTwitterUser
      |jsonObj|
      jsonObj := self twitterGetTimeline: aTwitterUser.
	jsonObj do: [:j | Transcript show: (j at: 'text'). Transcript cr. Transcript cr.]