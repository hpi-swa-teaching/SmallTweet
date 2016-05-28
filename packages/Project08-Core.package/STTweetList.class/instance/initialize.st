initialize-release
initialize
	super initialize.
	self margin: 10;
		 tweetListMorph: Morph new.
	tweetListMorph width: 300;
		 height: self margin;
		 color: Color green;
		 openInWorld