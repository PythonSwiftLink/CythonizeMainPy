
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
        		"ios-arm64", 
        		"ios-x86_64-simulator", 
        		"Info", 
        	], 
        	resources: [
        	], 
        	linkerSettings: [
        	]
    	), 
    	.binaryTarget(name: "ios-arm64", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/ios-arm64.zip", checksum: "ab03e2b4b2121d9e1b060406271ff94ccc323e07e66ddf4e444c123617e8a99d"), 
    	.binaryTarget(name: "ios-x86_64-simulator", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/ios-x86_64-simulator.zip", checksum: "6cd343516a069eccf7914b46454851ff56e73d5e9367057da75aba5cbb03dbb3"), 
    	.binaryTarget(name: "Info", url: "https://github.com/PythonSwiftLink/CythonizeMainPy/releases/download/311.0.0/Info.zip", checksum: "add52b8ce58a646464ed302cde9be5c85b10730adba4a565b24887ef46bbdbf8"), 
    ]
)