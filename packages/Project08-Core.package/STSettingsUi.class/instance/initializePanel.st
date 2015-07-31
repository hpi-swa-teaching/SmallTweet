ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (336@197).
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
	panel balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (328@155).
	unnamedMorph1 position: (4@4).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	userList := UiListWidget new.
	userList extent: (168@147).
	userList position: (8@8).
	userList hResizing: (#rigid).
	userList vResizing: (#rigid).
	userList minWidth: (2).
	userList minHeight: (2).
	userList cellInset: (0).
	userList cellPositioning: (#center).
	userList cellSpacing: (#none).
	userList layoutInset: (0).
	userList listCentering: (#topLeft).
	userList listDirection: (#topToBottom).
	userList listSpacing: (#none).
	userList maxCellSize: (1073741823).
	userList minCellSize: (0).
	userList wrapCentering: (#topLeft).
	userList wrapDirection: (#none).
	userList frameFractions: (0@0 corner: 1@1).
	userList frameOffsets: (0@0 corner: 0@0).
	userList balloonText: (nil).
	userList balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	userList widgetResizable: (true).
	userList horizontalScrollBarPolicy: (#alwaysOff).
	userList verticalScrollBarPolicy: (#asNeeded).
	userList outerBorderWidth: (0).
	userList scrollBarThickness: (9).
	userList modelClass: (UiPropertyItemNode).
	userList horizontalHeaderVisible: (false).
	userList verticalHeaderVisible: (false).
	userList selectionBehavior: (#selectRows).
	userList selectionMode: (UiViewSingleSelection).
	userList listOrientation: (#default).
	userList hAlignment: (#left).
	userList vAlignment: (#top).
	userList setProperty: #objectName toValue: 'userList'.
	unnamedMorph1 addChild: userList.
	removeUserButton := UiPushButton new.
	removeUserButton changeTableLayout.
	removeUserButton extent: (88@20).
	removeUserButton position: (181@71).
	removeUserButton hResizing: (#shrinkWrap).
	removeUserButton vResizing: (#shrinkWrap).
	removeUserButton minWidth: (2).
	removeUserButton minHeight: (2).
	removeUserButton cellInset: (4).
	removeUserButton cellPositioning: (#center).
	removeUserButton cellSpacing: (#none).
	removeUserButton layoutInset: (2@0 corner: 2@0).
	removeUserButton listCentering: (#topLeft).
	removeUserButton listDirection: (#leftToRight).
	removeUserButton listSpacing: (#none).
	removeUserButton maxCellSize: (1073741823).
	removeUserButton minCellSize: (0).
	removeUserButton wrapCentering: (#topLeft).
	removeUserButton wrapDirection: (#none).
	removeUserButton frameFractions: (0@0 corner: 1@1).
	removeUserButton frameOffsets: (0@0 corner: 0@0).
	removeUserButton balloonText: ('').
	removeUserButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	removeUserButton enabled: (true).
	removeUserButton setProperty: #iconByDesigner toValue: 'nil'.
	removeUserButton icon: (nil).
	removeUserButton text: ('Remove User').
	removeUserButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	removeUserButton checkable: (false).
	removeUserButton checked: (false).
	removeUserButton autoExclusive: (false).
	removeUserButton setProperty: #objectName toValue: 'removeUserButton'.
	unnamedMorph1 addChild: removeUserButton.
	panel addChild: unnamedMorph1.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (328@30).
	unnamedMorph2 position: (4@163).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (4).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.749)).
	unnamedMorph2 color: (Color transparent).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	pinInput := UiLineEdit new.
	pinInput extent: (173@20).
	pinInput position: (8@168).
	pinInput hResizing: (#spaceFill).
	pinInput vResizing: (#rigid).
	pinInput minWidth: (2).
	pinInput minHeight: (2).
	pinInput cellInset: (0).
	pinInput cellPositioning: (#center).
	pinInput cellSpacing: (#none).
	pinInput layoutInset: (0).
	pinInput listCentering: (#topLeft).
	pinInput listDirection: (#topToBottom).
	pinInput listSpacing: (#none).
	pinInput maxCellSize: (1073741823).
	pinInput minCellSize: (0).
	pinInput wrapCentering: (#topLeft).
	pinInput wrapDirection: (#none).
	pinInput frameFractions: (0@0 corner: 1@1).
	pinInput frameOffsets: (0@0 corner: 0@0).
	pinInput balloonText: ('').
	pinInput balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.741)).
	pinInput widgetResizable: (false).
	pinInput horizontalScrollBarPolicy: (#alwaysOff).
	pinInput verticalScrollBarPolicy: (#alwaysOff).
	pinInput outerBorderWidth: (1).
	pinInput scrollBarThickness: (9).
	pinInput theText: ('123456789').
	pinInput readOnly: (false).
	pinInput autoConvert: (false).
	pinInput autoAccept: (false).
	pinInput acceptOnFocusLost: (true).
	pinInput scrollingMode: (#none).
	pinInput scrollingLimit: (10).
	pinInput helpText: ('').
	pinInput hideCursor: (true).
	pinInput setProperty: #objectName toValue: 'pinInput'.
	unnamedMorph2 addChild: pinInput.
	sendPinButton := UiPushButton new.
	sendPinButton changeTableLayout.
	sendPinButton extent: (58@20).
	sendPinButton position: (185@167).
	sendPinButton hResizing: (#shrinkWrap).
	sendPinButton vResizing: (#shrinkWrap).
	sendPinButton minWidth: (2).
	sendPinButton minHeight: (2).
	sendPinButton cellInset: (4).
	sendPinButton cellPositioning: (#center).
	sendPinButton cellSpacing: (#none).
	sendPinButton layoutInset: (2@0 corner: 2@0).
	sendPinButton listCentering: (#topLeft).
	sendPinButton listDirection: (#leftToRight).
	sendPinButton listSpacing: (#none).
	sendPinButton maxCellSize: (1073741823).
	sendPinButton minCellSize: (0).
	sendPinButton wrapCentering: (#topLeft).
	sendPinButton wrapDirection: (#none).
	sendPinButton frameFractions: (0@0 corner: 1@1).
	sendPinButton frameOffsets: (0@0 corner: 0@0).
	sendPinButton balloonText: ('').
	sendPinButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	sendPinButton enabled: (false).
	sendPinButton setProperty: #iconByDesigner toValue: 'nil'.
	sendPinButton icon: (nil).
	sendPinButton text: ('Send Pin').
	sendPinButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	sendPinButton checkable: (false).
	sendPinButton checked: (false).
	sendPinButton autoExclusive: (false).
	sendPinButton setProperty: #objectName toValue: 'sendPinButton'.
	unnamedMorph2 addChild: sendPinButton.
	requestPinButton := UiPushButton new.
	requestPinButton changeTableLayout.
	requestPinButton extent: (77@20).
	requestPinButton position: (249@167).
	requestPinButton hResizing: (#shrinkWrap).
	requestPinButton vResizing: (#shrinkWrap).
	requestPinButton minWidth: (2).
	requestPinButton minHeight: (2).
	requestPinButton cellInset: (4).
	requestPinButton cellPositioning: (#center).
	requestPinButton cellSpacing: (#none).
	requestPinButton layoutInset: (2@0 corner: 2@0).
	requestPinButton listCentering: (#topLeft).
	requestPinButton listDirection: (#leftToRight).
	requestPinButton listSpacing: (#none).
	requestPinButton maxCellSize: (1073741823).
	requestPinButton minCellSize: (0).
	requestPinButton wrapCentering: (#topLeft).
	requestPinButton wrapDirection: (#none).
	requestPinButton frameFractions: (0@0 corner: 1@1).
	requestPinButton frameOffsets: (0@0 corner: 0@0).
	requestPinButton balloonText: (nil).
	requestPinButton balloonColor: ((TranslucentColor r: 0.92 g: 0.92 b: 0.706 alpha: 0.745)).
	requestPinButton enabled: (true).
	requestPinButton setProperty: #iconByDesigner toValue: 'nil'.
	requestPinButton icon: (nil).
	requestPinButton text: ('Request Pin').
	requestPinButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	requestPinButton checkable: (false).
	requestPinButton checked: (false).
	requestPinButton autoExclusive: (false).
	requestPinButton setProperty: #objectName toValue: 'requestPinButton'.
	unnamedMorph2 addChild: requestPinButton.
	panel addChild: unnamedMorph2.
	panel setProperty: #uiClassName toValue: 'settings'.