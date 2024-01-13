
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
    	.package(url: "https://github.com/PythonSwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
    	.target(
        	name: "CythonizedMainPy", 
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"), 
        		"libCythonizedMainPy", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizedMainPy/releases/download/311.0.0/libCythonizedMainPy.zip", checksum: "0225c3e6ca5c92102308526ea727c2e1b5fe733e95484ea1be1f8f8d689b85cc"), 
    ]
)