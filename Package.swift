// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "KeyCodes",
	products: [
		.library(name: "KeyCodes", targets: ["KeyCodes"]),
	],
	targets: [
		.target(name: "KeyCodes"),
		.testTarget(name: "KeyCodesTests", dependencies: ["KeyCodes"]),
	]
)
