
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
    	.binaryTarget(name: "libCythonizedMainPy", url: "https://github.com/PythonSwiftLink/CythonizedMainPy/releases/download/311.0.3/libCythonizedMainPy.zip", checksum: "777b0fbcfd78088fa52a5edeed391ee59233155d734b91da6aba4d36ee83c7b4"), 
    ]
)