as yet unclassified
addMenuMorph
	self
		addMorph: menuMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 0 @ 1)
				offsets: (0 @ 0 corner: 100 @ 0 negated)).
	menuMorph color: Color transparent.

	menuMorph addButton: #homeTimelineButton for: #loadHomeTimelineView on: self with: STwitterUIIcons home.
	menuMorph addButton: #profileButton for: #loadProfileView on: self with: STwitterUIIcons user.
	menuMorph addButton: #settingsButton for: #loadSettingsView on: self with:  STwitterUIIcons settings.
	
	menuMorph drawButtons.