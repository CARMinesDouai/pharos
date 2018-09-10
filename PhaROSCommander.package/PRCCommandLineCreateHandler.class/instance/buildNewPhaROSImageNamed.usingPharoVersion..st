phaROS images
buildNewPhaROSImageNamed: phaROSImageName usingPharoVersion: pharoVersionString 
	
	| pharoImage loadingScript launchCommandString |
	pharoImage := self pharoImageFileForVersion: pharoVersionString.	
	
	loadingScript := WriteStream on: (String new: 500).	
	loadingScript << 'Smalltalk saveAs: ''' << phaROSImageName base << '''.'.
	
	"set the same proxy as here in the pacakge image"
	NetworkSystemSettings useHTTPProxy ifTrue: [ 
			loadingScript << ('NetworkSystemSettings useHTTPProxy: true; httpProxyServer: ''{1}''; httpProxyPort: {2}.'
								format: {NetworkSystemSettings httpProxyServer. NetworkSystemSettings httpProxyPort})].	
				
	"Load/Update PhaROS project"
	loadingScript << '(Gofer it url: ''http://smalltalkhub.com/mc/CAR/PhaROS/main''; package: ''ConfigurationOfPhaROS'') load.'.
	loadingScript << 'VTermOutputDriver stdout yellow: ''Loading ConfigurationOfPhaROS loadStableFromCommander''; lf.'.
	loadingScript << ('#ConfigurationOfPhaROS asClass {1}.' format: {self phaROSVersionNameToLoad}).	
	loadingScript << 'Smalltalk snapshot: true andQuit: true.'.
	
	"make the Pharo<version>.image execute the loadingScriptName"
	launchCommandString := '{1}/pharo {2} eval "{3}"'
				format:
					{(Smalltalk imageDirectory pathString).
					(pharoImage pathString).
					(loadingScript contents)}.

	self stdout: launchCommandString.

	OSProcess waitForCommand: launchCommandString.
"	3 seconds wait	""here we wait for OSProcess commands executing in background to finish"""