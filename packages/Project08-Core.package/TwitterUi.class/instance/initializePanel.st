ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel extent: (500@300).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: ('').
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	panel color: (Color gray).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	textField := UiTextEdit new.
	textField extent: (491@151).
	textField position: (4@46).
	textField hResizing: (#spaceFill).
	textField vResizing: (#spaceFill).
	textField minWidth: (2).
	textField minHeight: (2).
	textField cellInset: (0).
	textField cellPositioning: (#center).
	textField cellSpacing: (#none).
	textField layoutInset: (0).
	textField listCentering: (#topLeft).
	textField listDirection: (#topToBottom).
	textField listSpacing: (#none).
	textField maxCellSize: (1073741823).
	textField minCellSize: (0).
	textField wrapCentering: (#topLeft).
	textField wrapDirection: (#none).
	textField frameFractions: (0@0 corner: 1@1).
	textField frameOffsets: (0@0 corner: 0@0).
	textField balloonText: (nil).
	textField balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	textField widgetResizable: (true).
	textField horizontalScrollBarPolicy: (#alwaysOff).
	textField verticalScrollBarPolicy: (#alwaysOn).
	textField outerBorderWidth: (1).
	textField scrollBarThickness: (9).
	textField theText: ('').
	textField readOnly: (false).
	textField autoConvert: (false).
	textField autoAccept: (false).
	textField acceptOnFocusLost: (false).
	textField scrollingMode: (#always).
	textField scrollingLimit: (10).
	textField setProperty: #objectName toValue: 'textField'.
	panel addChild: textField.
	toolbar := UiButtonGroup new.
	toolbar changeTableLayout.
	toolbar extent: (498@34).
	toolbar position: (2@5).
	toolbar hResizing: (#rigid).
	toolbar vResizing: (#rigid).
	toolbar minWidth: (2).
	toolbar minHeight: (2).
	toolbar cellInset: (4).
	toolbar cellPositioning: (#center).
	toolbar cellSpacing: (#none).
	toolbar layoutInset: (4).
	toolbar listCentering: (#topLeft).
	toolbar listDirection: (#leftToRight).
	toolbar listSpacing: (#none).
	toolbar maxCellSize: (1073741823).
	toolbar minCellSize: (0).
	toolbar wrapCentering: (#topLeft).
	toolbar wrapDirection: (#none).
	toolbar frameFractions: (0@0 corner: 1@1).
	toolbar frameOffsets: (0@0 corner: 0@0).
	toolbar balloonText: (nil).
	toolbar balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	toolbar color: (Color transparent).
	toolbar borderWidth: (0).
	toolbar borderStyle2: (#simple).
	toolbar borderColor: (Color black).
	toolbar setProperty: #objectName toValue: 'toolbar'.
	userSelectButton := UiPushButton new.
	userSelectButton changeTableLayout.
	userSelectButton extent: (96@20).
	userSelectButton position: (6@9).
	userSelectButton hResizing: (#shrinkWrap).
	userSelectButton vResizing: (#shrinkWrap).
	userSelectButton minWidth: (2).
	userSelectButton minHeight: (2).
	userSelectButton cellInset: (4).
	userSelectButton cellPositioning: (#center).
	userSelectButton cellSpacing: (#none).
	userSelectButton layoutInset: (2@0 corner: 2@0).
	userSelectButton listCentering: (#topLeft).
	userSelectButton listDirection: (#leftToRight).
	userSelectButton listSpacing: (#none).
	userSelectButton maxCellSize: (1073741823).
	userSelectButton minCellSize: (0).
	userSelectButton wrapCentering: (#topLeft).
	userSelectButton wrapDirection: (#none).
	userSelectButton frameFractions: (0@0 corner: 1@1).
	userSelectButton frameOffsets: (0@0 corner: 0@0).
	userSelectButton balloonText: ('').
	userSelectButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.737)).
	userSelectButton enabled: (true).
	userSelectButton setProperty: #iconByDesigner toValue: 'nil'.
	userSelectButton icon: (nil).
	userSelectButton text: ('User Selection').
	userSelectButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	userSelectButton checkable: (true).
	userSelectButton checked: (false).
	userSelectButton autoExclusive: (true).
	userSelectButton setProperty: #objectName toValue: 'userSelectButton'.
	toolbar addChild: userSelectButton.
	tweetButton := UiPushButton new.
	tweetButton changeTableLayout.
	tweetButton extent: (45@20).
	tweetButton position: (108@9).
	tweetButton hResizing: (#shrinkWrap).
	tweetButton vResizing: (#shrinkWrap).
	tweetButton minWidth: (2).
	tweetButton minHeight: (2).
	tweetButton cellInset: (4).
	tweetButton cellPositioning: (#center).
	tweetButton cellSpacing: (#none).
	tweetButton layoutInset: (2@0 corner: 2@0).
	tweetButton listCentering: (#topLeft).
	tweetButton listDirection: (#leftToRight).
	tweetButton listSpacing: (#none).
	tweetButton maxCellSize: (1073741823).
	tweetButton minCellSize: (0).
	tweetButton wrapCentering: (#topLeft).
	tweetButton wrapDirection: (#none).
	tweetButton frameFractions: (0@0 corner: 1@1).
	tweetButton frameOffsets: (0@0 corner: 0@0).
	tweetButton balloonText: (nil).
	tweetButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	tweetButton enabled: (true).
	tweetButton setProperty: #iconByDesigner toValue: 'nil'.
	tweetButton icon: (nil).
	tweetButton text: ('Tweet').
	tweetButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	tweetButton checkable: (true).
	tweetButton checked: (false).
	tweetButton autoExclusive: (true).
	tweetButton setProperty: #objectName toValue: 'tweetButton'.
	toolbar addChild: tweetButton.
	panel addChild: toolbar.
	panel setProperty: #uiClassName toValue: 'Twitter'.