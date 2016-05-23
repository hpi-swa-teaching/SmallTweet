as yet unclassified
with: user

| window nameField descriptionField picField |
window := Morph new.
nameField := TextFieldMorph new.
descriptionField := TextFieldMorph new.

window
	width: 500;
	height: 500;
	color: Color white;
	addMorph: nameField;
	addMorph: descriptionField.
	
nameField
	position: 10@100;
	width: 300;
	contents: 'Name: ' , user name.
	
descriptionField
	position: 10@150;
	width: 300;
	height: 200;
	contents: 'Description: ' , user description.

(user profileImageUrl includesSubString: '.jpg') ifTrue: [
	picField := ImageMorph new.
	window addMorph: picField.
	picField position: 10@10.
	[picField image: (HTTPSocket httpJpeg: user profileImageUrl)]
			on: Error
			do: [].
	].


window openInWorld 
