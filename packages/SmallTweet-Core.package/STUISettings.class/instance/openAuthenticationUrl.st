as yet unclassified
openAuthenticationUrl
	| url |
	twitterApi requestAuthenticationToken 
		ifFalse:[resultTextLabel contents: '<i>Requesting a pin failed</i>' asHtmlText.
			     ^ self].
	url := twitterApi authenticationUrl.
	STUtils openLink: url.