baselines
baseline10: spec
	<version:'1.0-baseline'>
	spec for: #common do: [
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/CAR/PhaROS/main'.
			
			spec project: 'ROSCatkinDeployer' with: [
				spec 
					className: 'ConfigurationOfROSCatkinDeployer';
					file: 'ConfigurationOfROSCatkinDeployer' ;
					repository: 'http://smalltalkhub.com/mc/CAR/PhaROS/main'.
			].
		
			spec package: 'PhaROSCommander' with: [ spec requires: #('ROSCatkinDeployer' ) ].
			spec package: 'PhaROSCommanderTests' with: [ spec requires: #('PhaROSCommander' ) ].
			spec group: 'default'  with: #( 'PhaROSCommander' ).
			spec group: 'core'  with: #( 'PhaROSCommander' ).
			spec group: 'core+tests'  with: #( 'PhaROSCommanderTests' ).
			
	].

