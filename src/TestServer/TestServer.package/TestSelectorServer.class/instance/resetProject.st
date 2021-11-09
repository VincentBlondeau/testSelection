actions
resetProject
	| user |
	^ [ :req | 
	self logger debug: 'New reset request from ' , (req at: #user) facilityLevel: self class logFacilityLevel.
	user := req at: #user.
	MooseProjectManager resetUser: user.
	TeaResponse ok ]