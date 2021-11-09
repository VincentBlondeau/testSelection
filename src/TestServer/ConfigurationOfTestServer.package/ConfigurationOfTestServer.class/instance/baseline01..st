baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'filetree://D:\repoMooseSdco\Pharo_sources\TestServer'.
		spec 
			project: 'ZincHTTPComponents' with: [
				spec
					className: #ConfigurationOfZincHTTPComponents;
					versionString: #'stable';
					loads: #('REST' );
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main/' ];
			project: 'Teapot' with: [
				spec
					className: #ConfigurationOfTeapot;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/' ];
			project: 'Garage' with: [
				spec
					className: #ConfigurationOfGarage;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/DBXTalk/Garage/main/' ];
			project: 'AccountManager' with: [
				spec
					className: #ConfigurationOfAccountManager;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/olivierauverlot/accountManager/main/' ];
			project: 'Syslog' with: [
				spec
					className: #ConfigurationOfSyslog;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/olivierauverlot/Syslog/main/' ].
		spec package: #TestServer. ].
