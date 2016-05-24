as yet unclassified
setUp
	twitterApi := STTwitterApi consumerKey: 'a key' consumerSecret: 'a secret'.
	twitterApi webClient: WebClientMock new.