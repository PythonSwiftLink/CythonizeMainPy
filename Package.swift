
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
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/libCythonizedMainPy.zip", checksum: "80057d9c653f3ab0ddf879b357c0f9f6faa715605b014456a9a72907c07e6e6d"), 
    ]
)