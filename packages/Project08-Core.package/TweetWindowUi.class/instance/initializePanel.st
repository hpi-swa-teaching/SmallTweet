ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (393@288).
	panel position: (0@0).
	panel hResizing: (#shrinkWrap).
	panel vResizing: (#shrinkWrap).
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
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	header := UiContainer new.
	header changeTableLayout.
	header extent: (385@26).
	header position: (4@4).
	header hResizing: (#spaceFill).
	header vResizing: (#shrinkWrap).
	header minWidth: (2).
	header minHeight: (2).
	header cellInset: (4).
	header cellPositioning: (#center).
	header cellSpacing: (#none).
	header layoutInset: (4).
	header listCentering: (#topLeft).
	header listDirection: (#leftToRight).
	header listSpacing: (#none).
	header maxCellSize: (1073741823).
	header minCellSize: (0).
	header wrapCentering: (#topLeft).
	header wrapDirection: (#none).
	header frameFractions: (0@0 corner: 1@1).
	header frameOffsets: (0@0 corner: 0@0).
	header balloonText: (nil).
	header balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.733)).
	header color: (Color transparent).
	header borderWidth: (0).
	header borderStyle2: (#simple).
	header borderColor: (Color black).
	header setProperty: #objectName toValue: 'header'.
	unnamedMorph1 := UiLabel new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (32@18).
	unnamedMorph1 position: (8@8).
	unnamedMorph1 hResizing: (#shrinkWrap).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (0).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: ('').
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	unnamedMorph1 text: ('From:').
	unnamedMorph1 setProperty: #formByDesigner toValue: 'nil'.
	unnamedMorph1 form: (nil).
	header addChild: unnamedMorph1.
	usernameLabel := UiLabel new.
	usernameLabel changeTableLayout.
	usernameLabel extent: (107@18).
	usernameLabel position: (44@8).
	usernameLabel hResizing: (#shrinkWrap).
	usernameLabel vResizing: (#shrinkWrap).
	usernameLabel minWidth: (2).
	usernameLabel minHeight: (2).
	usernameLabel cellInset: (0).
	usernameLabel cellPositioning: (#center).
	usernameLabel cellSpacing: (#none).
	usernameLabel layoutInset: (0).
	usernameLabel listCentering: (#topLeft).
	usernameLabel listDirection: (#leftToRight).
	usernameLabel listSpacing: (#none).
	usernameLabel maxCellSize: (1073741823).
	usernameLabel minCellSize: (0).
	usernameLabel wrapCentering: (#topLeft).
	usernameLabel wrapDirection: (#none).
	usernameLabel frameFractions: (0@0 corner: 1@1).
	usernameLabel frameOffsets: (0@0 corner: 0@0).
	usernameLabel balloonText: ('').
	usernameLabel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.722)).
	usernameLabel text: ('Please Login First').
	usernameLabel setProperty: #formByDesigner toValue: 'nil'.
	usernameLabel form: (nil).
	usernameLabel setProperty: #objectName toValue: 'usernameLabel'.
	header addChild: usernameLabel.
	panel addChild: header.
	tweetTextfield := UiTextEdit new.
	tweetTextfield extent: (383@214).
	tweetTextfield position: (4@34).
	tweetTextfield hResizing: (#spaceFill).
	tweetTextfield vResizing: (#rigid).
	tweetTextfield minWidth: (2).
	tweetTextfield minHeight: (2).
	tweetTextfield cellInset: (0).
	tweetTextfield cellPositioning: (#center).
	tweetTextfield cellSpacing: (#none).
	tweetTextfield layoutInset: (0).
	tweetTextfield listCentering: (#topLeft).
	tweetTextfield listDirection: (#topToBottom).
	tweetTextfield listSpacing: (#none).
	tweetTextfield maxCellSize: (1073741823).
	tweetTextfield minCellSize: (0).
	tweetTextfield wrapCentering: (#topLeft).
	tweetTextfield wrapDirection: (#none).
	tweetTextfield frameFractions: (0@0 corner: 1@1).
	tweetTextfield frameOffsets: (0@0 corner: 0@0).
	tweetTextfield balloonText: ('').
	tweetTextfield balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	tweetTextfield widgetResizable: (true).
	tweetTextfield horizontalScrollBarPolicy: (#alwaysOff).
	tweetTextfield verticalScrollBarPolicy: (#asNeeded).
	tweetTextfield outerBorderWidth: (1).
	tweetTextfield scrollBarThickness: (9).
	tweetTextfield theText: ('').
	tweetTextfield readOnly: (false).
	tweetTextfield autoConvert: (false).
	tweetTextfield autoAccept: (false).
	tweetTextfield acceptOnFocusLost: (false).
	tweetTextfield scrollingMode: (#none).
	tweetTextfield scrollingLimit: (10).
	tweetTextfield setProperty: #objectName toValue: 'tweetTextfield'.
	panel addChild: tweetTextfield.
	footer := UiContainer new.
	footer changeTableLayout.
	footer extent: (385@30).
	footer position: (4@254).
	footer hResizing: (#spaceFill).
	footer vResizing: (#shrinkWrap).
	footer minWidth: (2).
	footer minHeight: (2).
	footer cellInset: (4).
	footer cellPositioning: (#center).
	footer cellSpacing: (#none).
	footer layoutInset: (4).
	footer listCentering: (#topLeft).
	footer listDirection: (#rightToLeft).
	footer listSpacing: (#none).
	footer maxCellSize: (1073741823).
	footer minCellSize: (0).
	footer wrapCentering: (#bottomRight).
	footer wrapDirection: (#none).
	footer frameFractions: (0@0 corner: 1@1).
	footer frameOffsets: (0@0 corner: 0@0).
	footer balloonText: ('').
	footer balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	footer color: (Color transparent).
	footer borderWidth: (0).
	footer borderStyle2: (#simple).
	footer borderColor: (Color black).
	footer setProperty: #objectName toValue: 'footer'.
	tweetAsPictureButton := UiPushButton new.
	tweetAsPictureButton changeTableLayout.
	tweetAsPictureButton extent: (129@20).
	tweetAsPictureButton position: (255@259).
	tweetAsPictureButton hResizing: (#shrinkWrap).
	tweetAsPictureButton vResizing: (#shrinkWrap).
	tweetAsPictureButton minWidth: (2).
	tweetAsPictureButton minHeight: (2).
	tweetAsPictureButton cellInset: (4).
	tweetAsPictureButton cellPositioning: (#center).
	tweetAsPictureButton cellSpacing: (#none).
	tweetAsPictureButton layoutInset: (2@0 corner: 2@0).
	tweetAsPictureButton listCentering: (#topLeft).
	tweetAsPictureButton listDirection: (#leftToRight).
	tweetAsPictureButton listSpacing: (#none).
	tweetAsPictureButton maxCellSize: (1073741823).
	tweetAsPictureButton minCellSize: (0).
	tweetAsPictureButton wrapCentering: (#topLeft).
	tweetAsPictureButton wrapDirection: (#none).
	tweetAsPictureButton frameFractions: (0@0 corner: 1@1).
	tweetAsPictureButton frameOffsets: (0@0 corner: 0@0).
	tweetAsPictureButton balloonText: (nil).
	tweetAsPictureButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	tweetAsPictureButton enabled: (false).
	tweetAsPictureButton setProperty: #iconByDesigner toValue: 'UiFugueIcons imageExportIcon'.
	tweetAsPictureButton icon: (UiFugueIcons imageExportIcon).
	tweetAsPictureButton text: ('Tweet as Picture').
	tweetAsPictureButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	tweetAsPictureButton checkable: (false).
	tweetAsPictureButton checked: (false).
	tweetAsPictureButton autoExclusive: (false).
	tweetAsPictureButton setProperty: #objectName toValue: 'tweetAsPictureButton'.
	footer addChild: tweetAsPictureButton.
	tweetButton := UiPushButton new.
	tweetButton changeTableLayout.
	tweetButton extent: (65@20).
	tweetButton position: (184@259).
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
	tweetButton balloonText: ('').
	tweetButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.729)).
	tweetButton enabled: (false).
	tweetButton setProperty: #iconByDesigner toValue: 'MenuIcons smallOkIcon'.
	tweetButton icon: (MenuIcons smallOkIcon).
	tweetButton text: ('Tweet').
	tweetButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	tweetButton checkable: (false).
	tweetButton checked: (false).
	tweetButton autoExclusive: (false).
	tweetButton setProperty: #objectName toValue: 'tweetButton'.
	footer addChild: tweetButton.
	panel addChild: footer.
	panel setProperty: #uiClassName toValue: 'tweetWindow'.