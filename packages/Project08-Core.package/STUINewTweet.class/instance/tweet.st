as yet unclassified
tweet
	| text |
	text := tweetTextArea contents asString.
	twitterApi updateStatusWith: text.
	tweetTextArea contents: ''.