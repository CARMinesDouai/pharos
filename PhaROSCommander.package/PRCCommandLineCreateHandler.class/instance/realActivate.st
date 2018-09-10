activation
realActivate
	| location package version silent loadingScriptName loadingScript catkinWorskpaceDirectory catkinPackageDirectory   catkinPackageImageDirectory pharoVersionString launchCommandString  phaROSImage |
	
	package := self package.	"name of the catkin package to create"
	location := self location.	"catkinWorskpaceDirectory (~/PhaROS-ws by default)"
	version := self version.	"version of Pharo to use (Stable)"
	silent := self silent.	"true or false"

	catkinWorskpaceDirectory := location asFileReference.
	catkinPackageDirectory := catkinWorskpaceDirectory / 'src' / package.
	catkinPackageImageDirectory := catkinPackageDirectory / 'image'.	
	
	"download Pharo<version>.image if needed"
	pharoVersionString := version asString translateToLowercase.
		
	"use (or build) Pharo<version>-PhaROS<dev>.image if needed"
	phaROSImage := self phaROSImageFileForPharoVersion: pharoVersionString.	
	
	"rename the image to not pollute the cached one"
	loadingScript := WriteStream on: (String new: 500).	

	"save the image in the catkin directory"
	(loadingScript << 'Smalltalk saveAs: ''' << (catkinPackageImageDirectory pathString , '/' , package asString)) << '''.'; lf.
	loadingScript lf; << ('VTermOutputDriver stdout lf ; yellow: ''Generating catkin files: package.xml, CMakeFileLists.txt...'' ; lf.' format: {package});	lf.
				
	"set the same proxy as here in the pacakge image"
	NetworkSystemSettings useHTTPProxy ifTrue: [ 
			loadingScript << ('NetworkSystemSettings useHTTPProxy: true; httpProxyServer: ''{1}''; httpProxyPort: {2}.'
								format: {NetworkSystemSettings httpProxyServer. NetworkSystemSettings httpProxyPort}); lf ].	
					
	"setup image for the catkin package in which the Pharo image is saved"
	loadingScript lf; << 'Author useAuthor: ''pharos'' during: [ #PhaROSCatkinDeployer asClass setupImageForCurrentCatkinPackage ].'; lf. 
	loadingScript lf; << 'Smalltalk snapshot: true andQuit: true'; 	lf.	
	
	"Create the catkin package structure and files"
	self generateCatkinDirectoryNamed: package atLocation: catkinPackageDirectory.
	loadingScriptName := catkinPackageImageDirectory / (package , 'ImageCreationScript.st').	
	loadingScriptName writeStreamDo: [ :stream | stream nextPutAll: loadingScript contents ].	
	
	"make the Pharo<version>.image execute the loadingScriptName"
	launchCommandString := '{1}/pharo {2} st {3}'
				format:
					{(Smalltalk imageDirectory pathString).
					(phaROSImage pathString).
					(loadingScriptName pathString).
					(package asString)}.

	self stdout: launchCommandString.

	OSProcess waitForCommand: launchCommandString.
	3 seconds wait	"here we wait for OSProcess commands executing in background to finish"
		