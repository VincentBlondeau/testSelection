public
startOn: port
	super startOn: port.
	teapot
		GET:
			'/up'
				-> [ :req | 
					self logConnection: req.
					'upV1' ];
		POST: '/upload/<id>' -> self uploadActions;
		serveStatic: '/' from: self staticFolder;
		start