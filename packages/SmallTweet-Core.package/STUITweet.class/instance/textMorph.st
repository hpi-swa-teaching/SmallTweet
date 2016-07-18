as yet unclassified
textMorph
	| createdAt |
	createdAt := STUtils relativeTimeString: (STUtils timestampFromString: self tweet createdAt).
	text := TextMorph new contentsWrapped: (STUITextFormatter asHtmlText: (
		'<b>' , self tweet user name , '</b> ',
		 '<a href="smallTweetUser:', self tweet user screenName , '">', '<font color="#555555">@' , self tweet user screenName , '</font>', '</a>' ,
		'<br>' , (self linkUrls: self tweet text), '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text