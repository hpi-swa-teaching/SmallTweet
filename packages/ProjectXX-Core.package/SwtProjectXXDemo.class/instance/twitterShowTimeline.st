as yet unclassified
twitterShowTimeline
	"comment stating purpose of message"

	|client url resp json |

	client := WebClient new.

	url := self class apiUrl, 'statuses/user_timeline.json?user_id=3197549265&count=10'.
	resp := client httpGet: url do:[:req | WebUtils oAuthSign: req url: url using: self oauthParams]. 
	resp isSuccess ifFalse:[
	
		^'Something went wrong'.
	].

	json := JsonObject new.
	json stream: resp content.
	^json

	 
	