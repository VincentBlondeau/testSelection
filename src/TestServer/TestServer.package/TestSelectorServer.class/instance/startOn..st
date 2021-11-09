public
startOn: port
	super startOn: port.
	teapot
		GET:
			'/testSelection/up'
				-> [ :req | 
					self logConnection: req.
					'up' , self class version asString ];
		POST: '/testSelection/upload/<user>/<project>' -> self uploadActions;
		GET: '/testSelection/reset/<user>' -> self resetProject;
		start