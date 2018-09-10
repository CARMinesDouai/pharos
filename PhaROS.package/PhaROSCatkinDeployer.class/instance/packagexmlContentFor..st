generating - packageXml
packagexmlContentFor: aPackage
	^ ' <name>{1}</name>
  <version>{2}</version>
  <description>{3}</description>
  <maintainer email="{4}">{5}</maintainer>
  <license>{6}</license>
  <author email="{7}">{8}</author> 
  <buildtool_depend>catkin</buildtool_depend>
  <export>
  </export>' format:{ 
	aPackage catkinPackageName. 
	aPackage catkinPackageVersion.
	aPackage catkinPackageDescription.
	aPackage catkinPackageMaintainerEmail.
	aPackage catkinPackageMaintainer.
	aPackage catkinPackageLicense.
	aPackage catkinPackageAuthorEmail.
	aPackage catkinPackageAuthor.
 }