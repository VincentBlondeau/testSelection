as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec preLoadDoIt: #preLoad.
			spec
				project: 'ZincHTTPComponents'
					with: [ 
							spec
								className: #ConfigurationOfZincHTTPComponents;
								versionString: #stable;
								loads: #('REST');
								repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/' ];
				project: 'Teapot'
					with: [ 
							spec
								className: #ConfigurationOfTeapot;
								versionString: #stable;
								repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/' ];
				project: 'Garage'
					with: [ 
							spec
								className: #ConfigurationOfGarage;
								versionString: #development;
								repository: 'http://smalltalkhub.com/mc/DBXTalk/Garage/main/' ];
				project: 'AccountManager'
					with: [ 
							spec
								className: #ConfigurationOfAccountManager;
								versionString: #development;
								repository: 'http://smalltalkhub.com/mc/olivierauverlot/accountManager/main/' ];
				project: 'RProjectConnector'
					with: [ 
							spec
								className: #ConfigurationOfRProjectConnector;
								versionString: #development;
								repository: 'http://smalltalkhub.com/mc/VincentBlondeau/RProjectConnector/main/' ];
				project: 'Syslog'
					with: [ 
							spec
								className: #ConfigurationOfSyslog;
								versionString: #stable;
								repository: 'http://smalltalkhub.com/mc/olivierauverlot/Syslog/main/' ].
			spec package: #TestServer with: [ spec requires: #(#Syslog #AccountManager #Garage #Teapot #ZincHTTPComponents) ].
			spec package: #'TestServer-Query' with: [ spec requires: #(#TestServer RProjectConnector) ] ]