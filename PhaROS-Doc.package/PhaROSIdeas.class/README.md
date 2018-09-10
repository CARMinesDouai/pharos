Scan a given node,  and make an object that allows to use that node., like 

gmappings scan: [ :msg | msg echoes: laser echos].

also we can think in register type transformations

gmappings scan: [ :msg |  laser echoes => msg ]. or easier

gmappings scan: laser echoes.  



xsens when: 'topic' arriveInform: callback.

	self launch: [
		: spec | 
		spec package: 'xsens' service:'bla' name:'bla' with:[ :xsens | 
			xsens param: key value: value.
		]
		spec xsens default name: 'xsens'.
		spec gmappings default. 
		spec rviz with: [ : rviz |
			rviz map.
			rviz tf.	
		].
		spec amcl default with: [: amcl | amcl laser_scan: 'blabla' ]. 
		spec movebase default with: [ :mb | mb bla bla  ]. 
		
	]