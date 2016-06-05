as yet unclassified
loadMentionsView
	self 
		loadView: (STUIMentions with: twitterApi mentionsTimeline)
		as: #mentionsView 
		activate: #mentionsButton.