initialization
buildController
	| controller |

	controller := PhaROSHandleController home.
	controller nodelets use: PhaROSStdIONodelet as: #io. 
	^ controller 