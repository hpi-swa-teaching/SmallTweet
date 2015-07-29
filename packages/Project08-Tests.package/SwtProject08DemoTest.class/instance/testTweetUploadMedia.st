running
testTweetUploadMedia

	self assert: (self demo twitterTweet: 'SWTSpamaccount' withMedia: '' withText: '') = 0