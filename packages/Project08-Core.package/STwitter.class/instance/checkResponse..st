webCommunication
checkResponse: response

	response isSuccess
		ifFalse: [Transcript show: 'Something went wrong' , response content. ^0].
	^1