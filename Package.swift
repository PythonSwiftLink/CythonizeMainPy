
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CythonizedMainPy", 
    platforms: [.iOS(.v13)], 
    products: [
    	.library(
        	name: "CythonizedMainPy", 
        	targets: [
        		"CythonizedMainPy"
        	]
    	), 
    ], 
    dependencies: [
    	.package(url: "https://github.com/PythonSwiftLink/KivyPythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "CythonizedMainPy", 
        	dependencies: [
        		.product(name: "PythonCore", package: "KivyPythonCore"), 
        		"libCythonizedMainPy", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizedMainPy/releases/download/311.0.2/libCythonizedMainPy.zip", checksum: "5660263c02fcb25b0c426d581efa4bab239a56dcfda4e229974189b5515c7e20"), 
    ]
)