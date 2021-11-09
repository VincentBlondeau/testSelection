initialization
initialize
	Smalltalk
		at: #SmalltalkCI
		ifPresent: [ NetworkSystemSettings useHTTPProxy: true; httpProxyPort: 3128; httpProxyServer: #'proxy-prod.priv.atos.fr' ]