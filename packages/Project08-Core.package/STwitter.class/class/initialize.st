accessing
initialize
	"Add world / apps menu entry."

	TheWorldMenu registerOpenCommand: {'Twitter'. {self. #openCommand}}.