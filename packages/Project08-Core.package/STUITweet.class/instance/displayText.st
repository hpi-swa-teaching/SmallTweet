as yet unclassified
displayText
	 "TODO: Real tweet"
	| tweetUserName tweetUserRealName tweetText tweetInformation |
	tweetUserRealName := 'Nico Knoll'.
	tweetUserName := '@nico_knoll'.
	tweetText := 'Animi tempora diamlorem adipisci nibh qui magni, occaecat ad, aliquid! Quas mi beatae aenean. Sodales. Feugiat, veniam ultricies sociis est condimentum feugiat iaculis parturient, earum nobis, libero molestie hic. Occaecat.'.
	tweetInformation := '13. Mai 2016'.
	
	text := TextMorph new contentsWrapped: (
		'<b>', tweetUserRealName, '</b>  <font color="#555555">', tweetUserName, '</font><br>',  
		tweetText, '<br>',
		'<i><font color="#555555">', tweetInformation, '</font></i>'
	) asHtmlText.
	
	text 
		wrapFlag: true;
	 	lock;
		width:300.
	self addMorphBack: text.