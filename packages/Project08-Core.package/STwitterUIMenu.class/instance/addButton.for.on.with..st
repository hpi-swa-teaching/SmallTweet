as yet unclassified
addButton: aLabel for: anAction on: aTarget with: anImage
	| button |
	button := Dictionary new.
	button 
		at: #label put: aLabel;
		at: #action put: anAction;
		at: #target put: aTarget;
		at: #image put: anImage.
	
	buttons add: button.