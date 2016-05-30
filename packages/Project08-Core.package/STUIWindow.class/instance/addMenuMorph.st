as yet unclassified
addMenuMorph
	self
		addMorph: menuMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: 100 @ 0 negated)).
	menuMorph color: Color transparent.

	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: STUIIcons home.
	menuMorph addButton: #profileButton for: #loadProfileView on: self with: STUIIcons user.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with:  STUIIcons settings.
	
	menuMorph drawButtons.