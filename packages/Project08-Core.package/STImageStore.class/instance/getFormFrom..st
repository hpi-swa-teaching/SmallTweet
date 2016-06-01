as yet unclassified
getFormFrom: anUrl
"Returns ImageForm if found in cache, otherwise nil"

^ self at: anUrl ifAbsent: []