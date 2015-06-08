accessing
accessToken
	^ accessToken
		ifNil: [accessToken := Dictionary newFromPairs: 
			{'SWTSpamaccount'. '3197549265-bkLTsewz2Z0qww7xj9e5sMK75JQW1qyW9y0VxpF'. 
			'Tymolc'. '267957538-crhpPpH74WjnHKelHSVuCHqquF9c9FBo1nb4mgPj'}]