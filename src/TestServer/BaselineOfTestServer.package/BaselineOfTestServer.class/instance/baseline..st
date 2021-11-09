baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec preLoadDoIt: #preLoad.
			spec
				project: 'ZincHTTPComponents'
					with: [ spec
						className: #ConfigurationOfZincHTTPComponents;
						versionString: #stable;
						loads: #('REST');
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/' ];
				project: 'Teapot'
					with: [ spec
						className: #ConfigurationOfTeapot;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/' ];
				project: 'OrionMerge'
					with: [ spec
						className: #ConfigurationOfOrionMerge;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/Moose/Orion/main' ];
				project: 'Garage'
					with: [ spec
						className: #ConfigurationOfGarage;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/DBXTalk/Garage/main/' ];
				project: 'AccountManager'
					with: [ spec
						className: #ConfigurationOfAccountManager;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/olivierauverlot/accountManager/main/' ];
				project: 'FamixDiff'
					with: [ spec
						className: #ConfigurationOfFamixDiff;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/Moose/FamixDiff/main/' ];
				project: 'Jacoco'
					with: [ spec
						className: #ConfigurationOfJavaTestsTools;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/VincentBlondeau/Jacoco/main/' ];
				project: 'Syslog'
					with: [ spec
						className: #ConfigurationOfSyslog;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/olivierauverlot/Syslog/main/' ].
			spec package: #TestServer ]