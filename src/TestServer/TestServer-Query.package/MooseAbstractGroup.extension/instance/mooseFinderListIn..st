*TestServer-Query
mooseFinderListIn: composite
	<moosePresentationOrder: 1>
	composite list
		beMultiple;
		showOnly: 50;
		searchOn: [ :text :each | Smalltalk compiler evaluate: ' | entity each | each := self. entity := each.' , text for: each logged: false ];
		display: #mooseInterestingEntity;
		sortBlock: [ :a :b | a mooseDisplayString < b mooseDisplayString ];
		send: [ :each | 
					each isNil
						ifTrue: [ nil ]
						ifFalse: [ 
							each size = 1
								ifTrue: [ each first ]
								ifFalse: [ each asMooseGroup ] ] ];
		format: #mooseDisplayString;
		icon: #mooseIcon;
		title: [ :each | each mooseInterestingEntity size asString , ' items' ];
		titleIcon: MooseIcons mooseList;
		when: [ :input | (input mooseInterestingEntity isKindOf: MooseGroup) or: [ input mooseInterestingEntity isKindOf: Collection ] ];
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ];
		updateOn: MooseEntityAdded from: [ :anObject | MooseFinder announcerFor: anObject ];
		updateOn: MooseEntityRemoved from: [ :anObject | MooseFinder announcerFor: anObject ];
		helpMessage:
				'A selection boolean statement using ''each'' to refer to each element' , String cr , 'For example: ' , String cr
						, 'each beginsWith:''C'''