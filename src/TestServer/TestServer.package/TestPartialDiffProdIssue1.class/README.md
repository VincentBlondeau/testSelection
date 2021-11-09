Dump:
 15 March 2017 3:05:16.753211 pm

VM: unix - i686 - linux-gnu - CoInterpreter VMMaker.oscog-HolgerHansPeterFreyther.1880 uuid: 16138eb3-2390-40f5-a6c8-15f0494936f8 Jun 21 2016
StackToRegisterMappingCogit VMMaker.oscog-HolgerHansPeterFreyther.1880 uuid: 16138eb3-2390-40f5-a6c8-15f0494936f8 Jun 21 2016
https://github.com/pharo-project/pharo-vm.git Commit: 9638b0190a9fc01479bfb752becd96edfd253c8c Date: 2016-06-21 12:29:26 +0200 By: GitHub <noreply@github.com> Jenkins build #594

Image: Pharo6.0 [Latest update: #60418]

[ OREntityNotFoundInCurrentModel signal: self model: anOrionModel.
^ nil	"Should NEVER happen... If it is happening, you are NOT in the right model and currentContext of the caller should have been set to the right model where the considered entity is existing. By set, I mean for at least the first entity where you begin the query; the currentContext is transmitted to the other entities  ---VB---" ] in ORInvocation>>versionIn:
	Receiver: an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrpc...etc...
	Arguments and temporary variables: 
		anOrionModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)
		upEntity: 	nil
	Receiver's instance variables: 
		mooseID: 	2932
		state: 	an ORDefaultState
		sourceAnchor: 	nil
		sourceLanguage: 	nil
		comments: 	#()
		declaredSourceLanguage: 	nil
		previous: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
		next: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcSer...etc...
		sender: 	AbstractGrpcService>>AbstractGrpcService(int) (Method)
		receiver: 	nil
		receiverSourceCode: 	nil
		signature: 	'start()'
		candidates: 	an Array(<StubMethodContainer>>>start() (Method))

HashTable>>at:ifAbsent:
	Receiver: a HashTable(2->an ORInheritance 'IOException -> Exception' (Inheritance) 3->an ORInvocatio...etc...
	Arguments and temporary variables: 
		aKey: 	2932
		aBlock: 	[ OREntityNotFoundInCurrentModel signal: self model: anOrionModel.
^ ni...etc...
		index: 	2933
		item: 	nil
	Receiver's instance variables: 
		table: 	an Array(nil nil a TableItem key: 2 value: an ORInheritance 'IOException...etc...
		loadfactor: 	0.6
		size: 	2881
		capacity: 	5221

ORStorage>>atID:ifAbsent:
	Receiver: an ORStorage(an ORInheritance 'IOException -> Exception' (Inheritance) an ORInvocation 'co...etc...
	Arguments and temporary variables: 
		uniqueId: 	2932
		exceptionBlock: 	[ OREntityNotFoundInCurrentModel signal: self model: anOrionMod...etc...
	Receiver's instance variables: 
		byName: 	an IdentityDictionary(#'com::inria::spirals::mgonzale::services::Abstra...etc...
		elements: 	a HashTable(2->an ORInheritance 'IOException -> Exception' (Inheritan...etc...
		byType: 	a Dictionary(ORAccess->an OrderedCollection(an ORAccess 'com::inria::sp...etc...
		model: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)

ORInvocation>>versionIn:
	Receiver: an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrpc...etc...
	Arguments and temporary variables: 
		anOrionModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)
		upEntity: 	nil
	Receiver's instance variables: 
		mooseID: 	2932
		state: 	an ORDefaultState
		sourceAnchor: 	nil
		sourceLanguage: 	nil
		comments: 	#()
		declaredSourceLanguage: 	nil
		previous: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
		next: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcSer...etc...
		sender: 	AbstractGrpcService>>AbstractGrpcService(int) (Method)
		receiver: 	nil
		receiverSourceCode: 	nil
		signature: 	'start()'
		candidates: 	an Array(<StubMethodContainer>>>start() (Method))

ORInvocation>>previousOR:
	Receiver: an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrpc...etc...
	Arguments and temporary variables: 
		aVersion: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)
	Receiver's instance variables: 
		mooseID: 	1007
		state: 	an ORDefaultState
		sourceAnchor: 	nil
		sourceLanguage: 	nil
		comments: 	#()
		declaredSourceLanguage: 	nil
		previous: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
		next: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcSer...etc...
		sender: 	AbstractGrpcService>>AbstractGrpcService(int) (Method)
		receiver: 	nil
		receiverSourceCode: 	nil
		signature: 	'build()'
		candidates: 	an Array(>>build() (Method))

ORInvocation>>previous
	Receiver: an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrpc...etc...
	Arguments and temporary variables: 

	Receiver's instance variables: 
		mooseID: 	1007
		state: 	an ORDefaultState
		sourceAnchor: 	nil
		sourceLanguage: 	nil
		comments: 	#()
		declaredSourceLanguage: 	nil
		previous: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
		next: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcSer...etc...
		sender: 	AbstractGrpcService>>AbstractGrpcService(int) (Method)
		receiver: 	nil
		receiverSourceCode: 	nil
		signature: 	'build()'
		candidates: 	an Array(>>build() (Method))

OrionMergeFamixChangeVisitor>>setProperty:from:to:
	Receiver: an OrionMergeFamixChangeVisitor
	Arguments and temporary variables: 
		aFM3PropertyDescription: 	a FM3PropertyDescription[FAMIX.Association.previous]
		aMooseEntity: 	an ORInvocation 'com::inria::spirals::mgonzale::services::Abstrac...etc...
		anActionClass: 	ORActionRemoveInvocation(UndefinedObject)nil
		selector: 	#previous
		fromEntityResult: 	nil
		result: 	nil
	Receiver's instance variables: 
		famixAddVisitor: 	an OrionMergeFamixVisitor
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)

[ :e | self setProperty: e from: entity to: changeAction ] in OrionMergeFamixChangeVisitor>>createDel:entity:
	Receiver: an OrionMergeFamixChangeVisitor
	Arguments and temporary variables: 
		descr: 	a FM3MetaDescription[ORInvocation]
		aFamixRemovalChange: 	del(ORInvocation) com::inria::spirals::mgonzale::services:...etc...
		entity: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcS...etc...
		changeAction: 	ORActionRemoveInvocation(UndefinedObject)nil
		e: 	a FM3PropertyDescription[FAMIX.Association.previous]
	Receiver's instance variables: 
		famixAddVisitor: 	an OrionMergeFamixVisitor
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)

Array(SequenceableCollection)>>do:
	Receiver: an Array(a FM3PropertyDescription[FAMIX.Invocation.signature] a FM3PropertyDescription[FAM...etc...
	Arguments and temporary variables: 
		aBlock: 	[ :e | self setProperty: e from: entity to: changeAction ]
		index: 	7
	Receiver's instance variables: 
an Array(a FM3PropertyDescription[FAMIX.Invocation.signature] a FM3PropertyDescription[FAM...etc...
OrionMergeFamixChangeVisitor>>createDel:entity:
	Receiver: an OrionMergeFamixChangeVisitor
	Arguments and temporary variables: 
		descr: 	a FM3MetaDescription[ORInvocation]
		aFamixRemovalChange: 	del(ORInvocation) com::inria::spirals::mgonzale::services:...etc...
		entity: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcS...etc...
		changeAction: 	ORActionRemoveInvocation(UndefinedObject)nil
	Receiver's instance variables: 
		famixAddVisitor: 	an OrionMergeFamixVisitor
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)

OrionMergeFamixVisitor>>visitEntity:
	Receiver: an OrionMergeFamixVisitor
	Arguments and temporary variables: 
		anEntity: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
	Receiver's instance variables: 
		currentEntity: 	del(ORInvocation) com::inria::spirals::mgonzale::services::Abstr...etc...
		changeVisitor: 	an OrionMergeFamixChangeVisitor

OrionMergeFamixVisitor(FAMIXVisitor)>>visitAssociation:
	Receiver: an OrionMergeFamixVisitor
	Arguments and temporary variables: 
		anAssociation: 	an ORInvocation 'com::inria::spirals::mgonzale::services::Abstra...etc...
	Receiver's instance variables: 
		currentEntity: 	del(ORInvocation) com::inria::spirals::mgonzale::services::Abstr...etc...
		changeVisitor: 	an OrionMergeFamixChangeVisitor

OrionMergeFamixVisitor(FAMIXVisitor)>>visitInvocation:
	Receiver: an OrionMergeFamixVisitor
	Arguments and temporary variables: 
		anInvocation: 	an ORInvocation 'com::inria::spirals::mgonzale::services::Abstrac...etc...
	Receiver's instance variables: 
		currentEntity: 	del(ORInvocation) com::inria::spirals::mgonzale::services::Abstr...etc...
		changeVisitor: 	an OrionMergeFamixChangeVisitor

ORInvocation(FAMIXInvocation)>>accept:
	Receiver: an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrpc...etc...
	Arguments and temporary variables: 
		aVisitor: 	an OrionMergeFamixVisitor
	Receiver's instance variables: 
		mooseID: 	1007
		state: 	an ORDefaultState
		sourceAnchor: 	nil
		sourceLanguage: 	nil
		comments: 	#()
		declaredSourceLanguage: 	nil
		previous: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrp...etc...
		next: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcSer...etc...
		sender: 	AbstractGrpcService>>AbstractGrpcService(int) (Method)
		receiver: 	nil
		receiverSourceCode: 	nil
		signature: 	'build()'
		candidates: 	an Array(>>build() (Method))

OrionMergeFamixChangeVisitor>>visitRemovalChange:
	Receiver: an OrionMergeFamixChangeVisitor
	Arguments and temporary variables: 
		aFamixAddChange: 	del(ORInvocation) com::inria::spirals::mgonzale::services::Abs...etc...
	Receiver's instance variables: 
		famixAddVisitor: 	an OrionMergeFamixVisitor
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)

FamixRemovalChange>>accept:
	Receiver: del(ORInvocation) com::inria::spirals::mgonzale::services::AbstractGrpcService.AbstractGrp...etc...
	Arguments and temporary variables: 
		aVisitor: 	an OrionMergeFamixChangeVisitor
	Receiver's instance variables: 
		entity: 	an ORInvocation 'com::inria::spirals::mgonzale::services::AbstractGrpcS...etc...

[ :aResult | aResult accept: visitor ] in OrionMergeWithVisitor>>run
	Receiver: an OrionMergeWithVisitor
	Arguments and temporary variables: 
		aResult: 	del(ORInvocation) com::inria::spirals::mgonzale::services::AbstractGrp...etc...
	Receiver's instance variables: 
		orchestrator: 	a FXDiff
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)
		actions: 	nil
		visitor: 	an OrionMergeFamixChangeVisitor

OrderedCollection>>do:
	Receiver: an OrderedCollection(add(FAMIXAttribute) com::inria::spirals::mgonzale::services::Abstract...etc...
	Arguments and temporary variables: 
		aBlock: 	[ :aResult | aResult accept: visitor ]
		index: 	215
	Receiver's instance variables: 
		array: 	an Array(add(FAMIXAttribute) com::inria::spirals::mgonzale::services::Ab...etc...
		firstIndex: 	1
		lastIndex: 	223

MooseGroupRuntimeStorage>>do:
	Receiver: a MooseGroupRuntimeStorage(add(FAMIXAttribute) com::inria::spirals::mgonzale::services::Ab...etc...
	Arguments and temporary variables: 
		aBlock: 	[ :aResult | aResult accept: visitor ]
	Receiver's instance variables: 
		byName: 	an IdentityDictionary()
		elements: 	an OrderedCollection(add(FAMIXAttribute) com::inria::spirals::mgonzal...etc...
		byType: 	a Dictionary(FamixAddChange->an OrderedCollection(add(FAMIXAttribute) c...etc...

FamixDiffResult(MooseAbstractGroup)>>do:
	Receiver: Group (223 FamixChanges)
	Arguments and temporary variables: 
		aBlock: 	[ :aResult | aResult accept: visitor ]
	Receiver's instance variables: 
		mooseID: 	6981
		state: 	a MooseDefaultState
		storage: 	a MooseGroupRuntimeStorage(add(FAMIXAttribute) com::inria::spirals::mg...etc...
		orchestrator: 	nil

OrionMergeWithVisitor>>run
	Receiver: an OrionMergeWithVisitor
	Arguments and temporary variables: 

	Receiver's instance variables: 
		orchestrator: 	a FXDiff
		orionVersionedModel: 	an ORModel #'noname_2017-03-15_15:05:16'(2881)
		actions: 	nil
		visitor: 	an OrionMergeFamixChangeVisitor

[ :aPostOperationClass | aPostOperationClass run ] in FXDiff>>basicRun
	Receiver: a FXDiff
	Arguments and temporary variables: 
		aPostOperationClass: 	an OrionMergeWithVisitor
	Receiver's instance variables: 
		progBar: 	nil
		nb: 	nil
		model: 	nil
		args: 	a Dictionary(#filesDeleted->#() )
		baseModel: 	an ORModel #noname(2870)
		result: 	Group (223 FamixChanges)
		targetModel: 	a MooseModel #noname(836)
		diffComputer: 	a FamixDiff
		diffTransformers: 	an Array(a FamixDiffChangesSorter a TestSelectorPartialModelD...etc...
		tolerance: 	0

Array(SequenceableCollection)>>do:
	Receiver: an Array(a FamixDiffChangesSorter a TestSelectorPartialModelDiffReducer a FamixDiffBodyCha...etc...
	Arguments and temporary variables: 
		aBlock: 	[ :aPostOperationClass | aPostOperationClass run ]
		index: 	4
	Receiver's instance variables: 
an Array(a FamixDiffChangesSorter a TestSelectorPartialModelDiffReducer a FamixDiffBodyCha...etc...
FXDiff>>basicRun
	Receiver: a FXDiff
	Arguments and temporary variables: 

	Receiver's instance variables: 
		progBar: 	nil
		nb: 	nil
		model: 	nil
		args: 	a Dictionary(#filesDeleted->#() )
		baseModel: 	an ORModel #noname(2870)
		result: 	Group (223 FamixChanges)
		targetModel: 	a MooseModel #noname(836)
		diffComputer: 	a FamixDiff
		diffTransformers: 	an Array(a FamixDiffChangesSorter a TestSelectorPartialModelD...etc...
		tolerance: 	0

[ self setUp.
result := self basicRun ] in FXDiff(MooseTask)>>run
	Receiver: a FXDiff
	Arguments and temporary variables: 
		result: 	nil
	Receiver's instance variables: 
		progBar: 	nil
		nb: 	nil
		model: 	nil
		args: 	a Dictionary(#filesDeleted->#() )
		baseModel: 	an ORModel #noname(2870)
		result: 	Group (223 FamixChanges)
		targetModel: 	a MooseModel #noname(836)
		diffComputer: 	a FamixDiff
		diffTransformers: 	an Array(a FamixDiffChangesSorter a TestSelectorPartialModelD...etc...
		tolerance: 	0

BlockClosure>>ensure:
	Receiver: [ self setUp.
result := self basicRun ]
	Arguments and temporary variables: 
		aBlock: 	[ self tearDown ]
		complete: 	nil
		returnValue: 	nil
	Receiver's instance variables: 
		outerContext: 	FXDiff(MooseTask)>>run
		startpc: 	37
		numArgs: 	0

FXDiff(MooseTask)>>run
	Receiver: a FXDiff
	Arguments and temporary variables: 
		result: 	nil
	Receiver's instance variables: 
		progBar: 	nil
		nb: 	nil
		model: 	nil
		args: 	a Dictionary(#filesDeleted->#() )
		baseModel: 	an ORModel #noname(2870)
		result: 	Group (223 FamixChanges)
		targetModel: 	a MooseModel #noname(836)
		diffComputer: 	a FamixDiff
		diffTransformers: 	an Array(a FamixDiffChangesSorter a TestSelectorPartialModelD...etc...
		tolerance: 	0

FXDiff class>>runOnBaseModel:targetModel:diffComputer:diffTransformers:args:
	Receiver: FXDiff
	Arguments and temporary variables: 
		aBaseModel: 	an ORModel #noname(2870)
		targetModel: 	a MooseModel #noname(836)
		aDiffComputer: 	FamixDiff
		aColOfDiffTransformers: 	{FamixDiffChangesSorter. TestSelectorPartialModelDiffRe...etc...
		aDicoOfArgs: 	a Dictionary(#filesDeleted->#() )
	Receiver's instance variables: 
		superclass: 	MooseOperator
		methodDict: 	a MethodDictionary(#assocChanges->FXDiff>>#assocChanges #base->FXDi...etc...
		format: 	65546
		layout: 	a FixedLayout
		instanceVariables: 	nil
		organization: 	a ClassOrganization
		subclasses: 	nil
		name: 	#FXDiff
		classPool: 	a Dictionary()
		sharedPools: 	an OrderedCollection()
		environment: 	a SystemDictionary(lots of globals)
		category: 	#'Famix-Diff-Core'
		traitComposition: 	{}
		localSelectors: 	nil

MooseOrionProject>>importPartialMse:
	Receiver: a MooseOrionProject (grpc-server 3a786c0150cfa73df38124fb962dca78 an OrderedCollection(a M...etc...
	Arguments and temporary variables: 
		aMSEFileAnchor: 	a MSEFileAnchor (nil partial an Array(a Dictionary('changeType'...etc...
		partialMooseModel: 	a MooseModel #noname(836)
		baseModel: 	an ORModel #noname(2870)
		diffChanges: 	nil
	Receiver's instance variables: 
		name: 	'grpc-server'
		user: 	'3a786c0150cfa73df38124fb962dca78'
		mseList: 	an OrderedCollection(a MSEFileAnchor (noname full #()) a MSEFileAnchor...etc...
		rootModel: 	an ORSystem

MooseOrionProject>>loadCompleteProjectInMemory
	Receiver: a MooseOrionProject (grpc-server 3a786c0150cfa73df38124fb962dca78 an OrderedCollection(a M...etc...
	Arguments and temporary variables: 

	Receiver's instance variables: 
		name: 	'grpc-server'
		user: 	'3a786c0150cfa73df38124fb962dca78'
		mseList: 	an OrderedCollection(a MSEFileAnchor (noname full #()) a MSEFileAnchor...etc...
		rootModel: 	an ORSystem

MooseOrionProject>>addNewMSE:type:changes:
	Receiver: a MooseOrionProject (grpc-server 3a786c0150cfa73df38124fb962dca78 an OrderedCollection(a M...etc...
	Arguments and temporary variables: 
		mse: 	'(
	(FAMIX.Access (id: 1)
		(accessor (ref: 433))
		(isWrite true)
		(prev...etc...
		aType: 	#partial
		aListOfChanges: 	an Array(a Dictionary('changeType'->'CHANGE' 'fileName'->'/grpc...etc...
		mseAnchor: 	a MSEFileAnchor (nil partial an Array(a Dictionary('changeType'->'CH...etc...
	Receiver's instance variables: 
		name: 	'grpc-server'
		user: 	'3a786c0150cfa73df38124fb962dca78'
		mseList: 	an OrderedCollection(a MSEFileAnchor (noname full #()) a MSEFileAnchor...etc...
		rootModel: 	an ORSystem

MooseProjectManager>>newMSE:fromUser:project:type:changes:
	Receiver: a MooseProjectManager
	Arguments and temporary variables: 
		mse: 	'(
	(FAMIX.Access (id: 1)
		(accessor (ref: 433))
		(isWrite true)
		(prev...etc...
		aUserName: 	'3a786c0150cfa73df38124fb962dca78'
		aProject: 	'grpc-server'
		aChangeType: 	#partial
		aColOfChanges: 	an Array(a Dictionary('changeType'->'CHANGE' 'fileName'->'/grpc-...etc...
		project: 	a MooseOrionProject (grpc-server 3a786c0150cfa73df38124fb962dca78 an O...etc...
	Receiver's instance variables: 
		projects: 	an OrderedCollection(a MooseOrionProject (grpc-server 3a786c0150cfa73...etc...

MooseProjectManager class>>addNewMSE:fromUser:project:type:changes:
	Receiver: MooseProjectManager
	Arguments and temporary variables: 
		mse: 	'(
	(FAMIX.Access (id: 1)
		(accessor (ref: 433))
		(isWrite true)
		(prev...etc...
		aUserName: 	'3a786c0150cfa73df38124fb962dca78'
		aProject: 	'grpc-server'
		aChangeType: 	#partial
		aColOfChanges: 	an Array(a Dictionary('changeType'->'CHANGE' 'fileName'->'/grpc-...etc...
	Receiver's instance variables: 
		superclass: 	Object
		methodDict: 	a MethodDictionary(#findProjectNamed:ofUser:->MooseProjectManager>>...etc...
		format: 	65537
		layout: 	a FixedLayout
		instanceVariables: 	nil
		organization: 	a ClassOrganization
		subclasses: 	nil
		name: 	#MooseProjectManager
		classPool: 	a Dictionary()
		sharedPools: 	an OrderedCollection()
		environment: 	a SystemDictionary(lots of globals)
		category: 	#'TestServer-Core'
		traitComposition: 	{}
		localSelectors: 	nil
		instance: 	a MooseProjectManager

TestSelectorServer>>importMSEFrom:
	Receiver: a TestSelectorServer
	Arguments and temporary variables: 
		req: 	a ZnRequest(POST /testSelection/upload/3a786c0150cfa73df38124fb962dca78/gr...etc...
		project: 	'grpc-server'
		user: 	'3a786c0150cfa73df38124fb962dca78'
		type: 	#partial
		listOfChanges: 	'{"list":[{ "changeType" : "CHANGE" , "fileName" : "/grpc-server...etc...
		testsSelected: 	nil
		mseAnchor: 	nil
		testsNames: 	nil
	Receiver's instance variables: 
		teapot: 	a Teapot
		staticFolder: 	File @ .
		return: 	''

[ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ] in [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ] in [ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
	Receiver: a TestSelectorServer
	Arguments and temporary variables: 
		req: 	a ZnRequest(POST /testSelection/upload/3a786c0150cfa73df38124fb962dca78/gr...etc...
		user: 	'3a786c0150cfa73df38124fb962dca78'
	Receiver's instance variables: 
		teapot: 	a Teapot
		staticFolder: 	File @ .
		return: 	''

BlockClosure>>on:do:
	Receiver: [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
se...etc...
	Arguments and temporary variables: 
		exception: 	GAError
		handlerAction: 	[ :e | 
self logger
	warning: user , '-Transaction Rollbacked-: ...etc...
	Receiver's instance variables: 
		outerContext: 	[ [ self logger
	debug: user , 'New request'
	facilityLevel: self...etc...
		startpc: 	152
		numArgs: 	0

[ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ] in [ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
	Receiver: a TestSelectorServer
	Arguments and temporary variables: 
		req: 	a ZnRequest(POST /testSelection/upload/3a786c0150cfa73df38124fb962dca78/gr...etc...
		user: 	'3a786c0150cfa73df38124fb962dca78'
	Receiver's instance variables: 
		teapot: 	a Teapot
		staticFolder: 	File @ .
		return: 	''

BlockClosure>>on:do:
	Receiver: [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
...etc...
	Arguments and temporary variables: 
		exception: 	MSENotFound
		handlerAction: 	[ :e | 
self logger
	warning: user , '-Full MSE file not existin...etc...
	Receiver's instance variables: 
		outerContext: 	[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: se...etc...
		startpc: 	146
		numArgs: 	0

[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
	Receiver: a TestSelectorServer
	Arguments and temporary variables: 
		req: 	a ZnRequest(POST /testSelection/upload/3a786c0150cfa73df38124fb962dca78/gr...etc...
		user: 	'3a786c0150cfa73df38124fb962dca78'
	Receiver's instance variables: 
		teapot: 	a Teapot
		staticFolder: 	File @ .
		return: 	''


--- The full stack ---
[ OREntityNotFoundInCurrentModel signal: self model: anOrionModel.
^ nil	"Should NEVER happen... If it is happening, you are NOT in the right model and currentContext of the caller should have been set to the right model where the considered entity is existing. By set, I mean for at least the first entity where you begin the query; the currentContext is transmitted to the other entities  ---VB---" ] in ORInvocation>>versionIn:
HashTable>>at:ifAbsent:
ORStorage>>atID:ifAbsent:
ORInvocation>>versionIn:
ORInvocation>>previousOR:
ORInvocation>>previous
OrionMergeFamixChangeVisitor>>setProperty:from:to:
[ :e | self setProperty: e from: entity to: changeAction ] in OrionMergeFamixChangeVisitor>>createDel:entity:
Array(SequenceableCollection)>>do:
OrionMergeFamixChangeVisitor>>createDel:entity:
OrionMergeFamixVisitor>>visitEntity:
OrionMergeFamixVisitor(FAMIXVisitor)>>visitAssociation:
OrionMergeFamixVisitor(FAMIXVisitor)>>visitInvocation:
ORInvocation(FAMIXInvocation)>>accept:
OrionMergeFamixChangeVisitor>>visitRemovalChange:
FamixRemovalChange>>accept:
[ :aResult | aResult accept: visitor ] in OrionMergeWithVisitor>>run
OrderedCollection>>do:
MooseGroupRuntimeStorage>>do:
FamixDiffResult(MooseAbstractGroup)>>do:
OrionMergeWithVisitor>>run
[ :aPostOperationClass | aPostOperationClass run ] in FXDiff>>basicRun
Array(SequenceableCollection)>>do:
FXDiff>>basicRun
[ self setUp.
result := self basicRun ] in FXDiff(MooseTask)>>run
BlockClosure>>ensure:
FXDiff(MooseTask)>>run
FXDiff class>>runOnBaseModel:targetModel:diffComputer:diffTransformers:args:
MooseOrionProject>>importPartialMse:
MooseOrionProject>>loadCompleteProjectInMemory
MooseOrionProject>>addNewMSE:type:changes:
MooseProjectManager>>newMSE:fromUser:project:type:changes:
MooseProjectManager class>>addNewMSE:fromUser:project:type:changes:
TestSelectorServer>>importMSEFrom:
[ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ] in [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ] in [ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
BlockClosure>>on:do:
[ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ] in [ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
BlockClosure>>on:do:
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ] in [ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
 - - - - - - - - - - - - - - -  
			- - - - - - - - - - - - - - - - - -
BlockClosure>>on:do:
[ :req | 
| user |
user := req at: #user.
[ [ [ self logger
	debug: user , 'New request'
	facilityLevel: self class logFacilityLevel.
self importMSEFrom: req.
TeaResponse created body: return ]
	on: GAError
	do: [ :e | 
		self logger
			warning: user , '-Transaction Rollbacked-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		TeaResponse notModified body: 'Rollbacked transaction' , e asString ] ]
	on: MSENotFound
	do: [ :e | 
		self logger
			warning: user , '-Full MSE file not existing.. Please create a new one.'
			facilityLevel: self class logFacilityLevel.
		TeaResponse resetContent
			body: 'Full MSE not existing. Please reset!' ] ]
	on: Error
	do: [ :e | 
		self logger
			alert: user , '-Oops something did wrong...-: ' , e asString
			facilityLevel: self class logFacilityLevel.
		self serializeModel: req andException: e.
		TeaResponse badRequest
			body: 'Houston, we have a problem!' , e asString ] ] in TestSelectorServer>>uploadActions
BlockClosure>>cull:
BlockClosure>>teaEvalActionOnRequest:
[ :aTeaRequest | 
| result |
result := action teaEvalActionOnRequest: aTeaRequest.
result teaTransform: responseTransformer request: aTeaRequest ] in TeaRoute>>handleRequest:
TeaRequestMatcher>>matchRequest:ifMatch:ifNoMatch:
TeaRoute>>handleRequest:
[ :each | 
| aZnResponse |
aZnResponse := each handleRequest: aZnRequest.
aZnResponse isNotFound
	ifFalse: [ ^ aZnResponse ] ] in TeaDynamicRouter>>handleRequest:
OrderedCollection>>do:
TeaDynamicRouter>>handleRequest:
[ :each | 
| response |
response := each handleRequest: aZnRequest.
response isNotFound
	ifFalse: [ ^ response ] ] in TeaCompositeRouter>>evaluateRouters:
Array(SequenceableCollection)>>do:
TeaCompositeRouter>>evaluateRouters:
[ self evaluateBeforeFilters: aZnRequest.
response := self evaluateRouters: aZnRequest.
self evaluateAfterFilters: aZnRequest response: response.
response ] in TeaCompositeRouter>>handleRequest:
BlockClosure>>on:do:
TeaCompositeRouter>>handleRequest:
[ self delegate
	ifNil: [ ZnResponse notFound: request uri ]
	ifNotNil: [ :delegate | delegate handleRequest: request ] ] in ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>authenticateAndDelegateRequest:
ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>authenticateRequest:do:
ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>authenticateAndDelegateRequest:
[ self authenticateAndDelegateRequest: request ] in [ [ self authenticateAndDelegateRequest: request ]
	on: ZnRespond
	do: [ :notification | notification response ] ] in ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>handleRequestProtected:
BlockClosure>>on:do:
[ [ self authenticateAndDelegateRequest: request ]
	on: ZnRespond
	do: [ :notification | notification response ] ] in ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>handleRequestProtected:
BlockClosure>>on:do:
ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>handleRequestProtected:
ZnManagingMultiThreadedServer(ZnSingleThreadedServer)>>handleRequest:timing:
ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>executeOneRequestResponseOn:
[ [ self executeOneRequestResponseOn: stream ] whileFalse ] in ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>executeRequestResponseLoopOn:
[ activeProcess psValueAt: index put: anObject.
aBlock value ] in ZnCurrentServer(DynamicVariable)>>value:during:
BlockClosure>>ensure:
ZnCurrentServer(DynamicVariable)>>value:during:
ZnCurrentServer class(DynamicVariable class)>>value:during:
ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>executeRequestResponseLoopOn:
[ self executeRequestResponseLoopOn: stream ] in [ [ self executeRequestResponseLoopOn: stream ]
	ensure: [ self logConnectionClosed: stream.
		self closeSocketStream: stream ] ] in [ [ [ self executeRequestResponseLoopOn: stream ]
	ensure: [ self logConnectionClosed: stream.
		self closeSocketStream: stream ] ]
	ifCurtailed: [ socket destroy ] ] in ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>serveConnectionsOn:
BlockClosure>>ensure:
[ [ self executeRequestResponseLoopOn: stream ]
	ensure: [ self logConnectionClosed: stream.
		self closeSocketStream: stream ] ] in [ [ [ self executeRequestResponseLoopOn: stream ]
	ensure: [ self logConnectionClosed: stream.
		self closeSocketStream: stream ] ]
	ifCurtailed: [ socket destroy ] ] in ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>serveConnectionsOn:
BlockClosure>>ifCurtailed:
[ [ [ self executeRequestResponseLoopOn: stream ]
	ensure: [ self logConnectionClosed: stream.
		self closeSocketStream: stream ] ]
	ifCurtailed: [ socket destroy ] ] in ZnManagingMultiThreadedServer(ZnMultiThreadedServer)>>serveConnectionsOn:
[ self value.
Processor terminateActive ] in BlockClosure>>newProcess
