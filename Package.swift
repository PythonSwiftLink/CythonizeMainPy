
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CythonizeMainPy", 
    platforms: [.iOS(.v13)], 
    products: [
    	.library(
        	name: "CythonizeMainPy", 
        	targets: [
        		"CythonizeMainPy"
        	]
    	), 
    ], 
    dependencies: [
    	.package(url: "https://github.com/PythonSwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "CythonMainPy", 
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"), 
        		"libCythonizedMainPy", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/libCythonizedMainPy.zip", checksum: "605953143db1ae59b417fbcbe6cd8255530b7a31bc2f0b405dbf075c2c3ff33d"), 
    ]
)