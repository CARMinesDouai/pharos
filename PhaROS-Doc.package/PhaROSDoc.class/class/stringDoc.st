documentation
stringDoc
^' 
	Welcome to PhaROS! 

	-----------------------------------------------------------
	Running the generated package
	-----------------------------------------------------------
	
	The generated package has implemented some scripts to show you the basic usage of PhaROS. 
	In PhaROS a package has scripts. Each scripts represents a Node. Each of these nodes share the same class and code. So, take that in count when you implement a new script. 
	
	-----------------------------------------------------------------------------
	Basic ROS commands for your generated package
	-----------------------------------------------------------------------------
	
	For browse your package trough command line.
	
		roscd name-of-your-package 
	
	For editing the image
	
		rosrun name-of-your-package edit 
		
	For running a script with graphical interface 
	
		rosrun name-of-your-package pharos script-name 
	
	 For running a script without graphical interface 
	
		rosrun name-of-your-package headless script-name 
	
	For listing your scripts
	
		rosls name-of-your-package/image/scripts
	
	-----------------------------------------------------------
	Inside a package object 
	-----------------------------------------------------------
	
	Creating a new Script
	--------------------------------
	
		For creating a new script you need to add to your package class a method 
		named script{NameOfYourScript}. Inside this method you will have available a 
		controller, which is an object that gives construction facilities and access to an already built  node. 
		self controller node. 
		
		Inside this method you configure the given node and trigger all the logic of your node. 
		(So, from ROS point of view, each script is a node)
		
		In order to make this script available for execution you have two possibilties:
				
				- write a text file that executes this method ( PackageName new script{NameOfYourScript}. ) 
				and save it into packageFolder/image/scripts 
				- commit all your code and use the pharos tool to install it back, this will generate all 
				the needed files. (we are working for making this step easier)
				
		For examples of what an script is, browse the generated example package and match names 
		with the names available in the script folder. (roscd {package-name}/image/scripts).
		
		
	
	Publish topic 
	-------------------
	
	| publisher |
	publisher := self controller node 
						topicPublisher: ''/example/string'' 
						typedAs: ''std_msgs/String''.
						
	publisher send:[ : string | string data: ''this is an example'' ].
	
	
	Subscribe topic
	------------------------
	
	(self controller node buildConnectionFor: ''/example/string'' ) 
			typedAs: ''std_msgs/String''; 
			for: [ : string |  Transcript show: string data ];
			connect .
	
	
	Call service 
	------------------
	| service |
	service := self controller node service: ''/rosout/get_loggers''.
	service call.
	
	
	Define service 
	------------------------
	
	self controller node serve: [ :req :rsp | 
		 Transcript show: ''Service has been called.''; cr.  
	] at: ''/pharos/service'' typedAs:''roscpp/Empty''.
	
	
	
	
	Inject/install a nodelet 
	----------------------------------
	
	self controller nodelets use: YourNodeletClass as:#nameToBeInvoked.
	
	
	Specifying controller configuration 
	-----------------------------------------------------
	
	In the package object implement the message #buildController. Build controller has 
	the responsibility to build the controller and return it. 
	
	For building your own controller 
	
	buildController
		^ MyController build	
	
	For building same controller but configure things (like nodelets, or configuring)
	
	buildController
		^ self myControllerConfigurationMethod: super buildController.
	
	myControllerConfigurationMethod: aController
		<< Make here your configurations >>
		^ aController
	
	-----------------------------------------------------------
	Inside a nodelet object 
	-----------------------------------------------------------
	
	
	Define a new type
	-----------------------------
	Define as class method a method with a cool name, as myCoolTypeDefinition
	
	myCoolTypeDefinition
	
	^ PhaROSCompositeType named: ''anStandarROS/TypeName'' definedBy: {
		#header -> (PhaROSTypeBrowser instance definition: ''std_msgs/Header''). 
		#auint8 -> (PhaROSUInt8Type new).
		#auint16 -> (PhaROSUInt16Type new).
		#aint32 -> (PhaROSInt32Type new).
		#afloat32 -> (PhaROSFloat32Type new).
		#afloat64 -> (PhaROSFloat64Type new).
		#astring ->( PhaROSStringType new ) .
		#atime -> (PhaROSTimeType new ). 
	}  withConstants: {
		#CONSTANT -> ASimpleObjectValue
	}.
	
	As shown in the definition you give an array of associations with (#nameOfTheField -> Type new). 
	For checking all the available types, just browse any of this classes to go to the package. 
	Or check the reference.
	
	Constants values cannot be complex. Just numbers, strings, booleans. 
	
	
	
	Register a type 
	------------------------
	
	Define in class side of your nodelet the method #types 

	types
		^ super types, { #YourTypeName -> self myCoolTypeDefinition }.
	
	In order to deploy the type into ROS you will need to commit all your work and install it through 
	the pharos command (as shown in the shell commands section). 
	We are working to enhance this step. 
		
	-----------------------------------------------------------
	Shell commands
	-----------------------------------------------------------

	Create	PhaROS based Package		
	------------------------------------------------
		pharos create PACKAGE [OPTIONS]
		
		Example
			pharos create myPackage
			
		Help 
			pharos create --help

'