as yet unclassified
displayText
	text := TextMorph new contentsWrapped: (STUITextFormatter asHtmlText: (
		'<b>' , self tweet user name , '</b> ',
		'<font color="#555555">@' , self tweet user screenName , '</font>',
		'<br>' , (self linkUrls: self tweet text), '<br>' , 
		'<i><font color="#555555">' , self tweet createdAt , '</font></i>')).
	text wrapFlag: true;
		 "lock;"
		 width: 300.
	self addMorphBack: text