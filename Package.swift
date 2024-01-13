
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
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/libCythonizedMainPy.zip", checksum: "54e5954354447113654f9d6c5b463df8280b0765ce74b3a9c32b76a6c6d12a8b"), 
    ]
)