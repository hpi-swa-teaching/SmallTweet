as yet unclassified
displayText
	text := TextMorph new contentsWrapped: (
		'<b>' , self tweet user name , '</b> ',
		'<font color="#555555">@' , self tweet user screenName , '</font>',
		'<br>' , self tweet text , '<br>' , 
		'<i><font color="#555555">' , self tweet createdAt , '</font></i>') asHtmlText.
	text wrapFlag: true;
		 lock;
		 width: 300.
	self addMorphBack: text