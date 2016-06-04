as yet unclassified
with: aTwitterApi
	^ (self new)
		twitterApi: aTwitterApi;
		tweets: aTwitterApi homeTimeline;
		render