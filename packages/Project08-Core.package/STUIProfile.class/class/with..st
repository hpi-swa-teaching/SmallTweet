as yet unclassified
with: aTwitterApi
	^ (self new)
		twitterApi: aTwitterApi;
		addUserInfo;
		addMorphBack: (STUIUserTimeline with: aTwitterApi)