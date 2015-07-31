webCommunication
multipartHeaderForForm: aForm User: aTwitterUser

	|client url request morphAsPicture morphAsBase64 personalOauthParams postData boundary|

	client := self initializeClient."
	morphAsPicture := (ReadStream on: (aForm seasideMimeDocument)).
	morphAsBase64 := (Base64MimeConverter mimeEncode: morphAsPicture) contents."
	morphAsBase64 := aForm seasideMimeDocument contents.

	personalOauthParams := self getPersonalOAuthParametersFor: aTwitterUser.

	url := 'https://upload.twitter.com/1.1/media/upload.json'.
	boundary := '---------------SWTHPI2015-------------------'.

	postData := '--', boundary, String crlf,
				'Content-Disposition:form-data; name="media_data"; filename="upload.png"', String crlf,
				'Content-Type: image/png', String crlf, 
				'Content-Transfer-Encoding: base64', String crlf, String crlf,  
				morphAsBase64, String crlf,
				'--', boundary,'--', String crlf.

	request := client httpPost: url 
			content: postData
			type: 'multipart/form-data; boundary=', boundary
			do:[:req | WebUtils oAuthSign: req  url: url using: personalOauthParams.].
	^request