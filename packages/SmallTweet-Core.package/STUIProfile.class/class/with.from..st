as yet unclassified
with: anOrderedCollectionOfTweets from: aSTUser 		
	^ (self new)
		user: aSTUser;
		tweets: anOrderedCollectionOfTweets;
		addUserInfo;
		addUserTimeline.