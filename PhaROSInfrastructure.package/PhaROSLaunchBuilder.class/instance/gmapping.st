slam
gmapping
	| conf |


	conf := self package: 'gmapping' type:'slam_gmapping'  named: 'slam_gmapping'.

	conf output: 'screen'.
	
	conf param: 'base_frame' value:'/base_link'.
	conf param: 'map_frame' value:'/map'.
	conf param: 'odom_frame' value:'/odom'.
	conf param:'map_udpate_interval' value:'2.0'.
      conf param:'maxUrange' value:'30.0'.
      conf param:'sigma' value:'0.05'.
      conf param:'kernelSize' value:'1'.
      conf param:'lstep' value:'0.05'.
      conf param:'astep' value:'0.05'.
      conf param:'iterations' value:'5'.
      conf param:'lsigma' value:'0.075'.
      conf param:'ogain' value:'3.0'.
      conf param:'lskip' value:'0'.
      conf param:'srr' value:'0.1'.
      conf param:'srt' value:'0.2'.
      conf param:'str' value:'0.1'.
      conf param:'stt' value:'0.2'.
      conf param:'linearUpdate' value:'1.0'.
      conf param:'angularUpdate' value:'0.5'.
      conf param:'temporalUpdate' value:'3.0'.
      conf param:'resampleThreshold' value:'10.5'.
      conf param:'particles' value:'30'.
      conf param:'xmin' value:'-100.0'.
      conf param:'ymin' value:'-100.0'.
      conf param:'xmax' value:'100.0'.
      conf param:'ymax' value:'100.0'.
      conf param:'delta' value:'0.05'.
      conf param:'llsamplerange' value:'0.01'.
      conf param:'llsamplestep' value:'0.01'.
      conf param:'lasamplerange' value:'0.05'.
      conf param:'lasamplestep' value:'0.05'.



