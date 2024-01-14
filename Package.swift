
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
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizedMainPy/releases/download/311.0.4/libCythonizedMainPy.zip", checksum: "69d30fb158dd6a86ffffbecfc552d230de482fe09f913d97aa0fcca70ade96a1"), 
    ]
)