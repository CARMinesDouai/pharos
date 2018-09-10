.Singleton object in charge of browsing definition of types in ros world. Based on PhaROSSystemLauncher, it executes a rosmsg command, interpret it and generate a definition or a type (#definition: #type:). Also works with services types with #serviceDefinition: #serviceType:

It has inside also a map that caches the definitions of definitions. 