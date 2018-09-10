pharo images
downloadPharoVersionNamed: pharoVersionString 

	OSProcess waitForCommand: ('cd {1} && curl get.pharo.org/{2} | bash && mv Pharo.image Pharo{2}.image && mv Pharo.changes Pharo{2}.changes'
								format: { Smalltalk imageDirectory pathString. 
											pharoVersionString})