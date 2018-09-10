accessing
rospath

	^ path ifNil: [ path := '/opt/ros/', self distro ,'/bin/' ]