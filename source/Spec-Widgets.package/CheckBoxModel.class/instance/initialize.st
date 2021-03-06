initialization
initialize
	"initialization code for CheckBox"

	super initialize.
	
	actionWhenActivatedHolder := [] asValueHolder.
	actionWhenDesactivatedHolder := [] asValueHolder.
	enabledHolder := true asValueHolder.
	stateHolder := false asValueHolder.
	labelClickableHolder := true asValueHolder. 
	labelHolder := '' asValueHolder.
	stateHolder whenChangedDo: [:bool |
		bool
			ifTrue: actionWhenActivatedHolder contents
			ifFalse: actionWhenDesactivatedHolder contents.
		self changed: #state ].
	labelClickableHolder whenChangedDo: [:aBoolean |
		self widget ifNotNil: [:w | w labelClickable: aBoolean ]].
	labelHolder whenChangedDo: [:label |
		self widget ifNotNil: [:w | w label: label ]].
	