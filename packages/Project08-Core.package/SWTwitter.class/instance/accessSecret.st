accessing
accessSecret
	^ accessSecret
		ifNil: [accessSecret := Dictionary newFromPairs: 
			{'SWT-Spamaccount'. 'AnKN1MKH2W1FnFK4UuvTCk36cGFtr136UiBonTKrBesZz'. 
			'Tymolc'. '2oLuc1UZ2C8Le04EXMTeXXSKcYH5CII4YZjl8SORzuaJN'}]