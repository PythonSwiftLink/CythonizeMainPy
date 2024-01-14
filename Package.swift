
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
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizedMainPy/releases/download/311.0.1/libCythonizedMainPy.zip", checksum: "097a28635a4b8b9a15ed394e497cbd7637d0d7b99a26b3e9e278ad30876d4eae"), 
    ]
)