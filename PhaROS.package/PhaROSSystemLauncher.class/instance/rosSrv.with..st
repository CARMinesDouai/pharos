types
rosSrv: aCommand with: aTypeId
	
	
	^ self rosSrv: { aCommand . aTypeId } tmpFile: (aTypeId copyReplaceAll: '/' with:'_').
	