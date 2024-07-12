// swift-tools-version: 5.8

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

let swiftSettings: [SwiftSetting] = [
	.enableExperimentalFeature("StrictConcurrency"),
]

for target in package.targets {
	var settings = target.swiftSettings ?? []
	settings.append(contentsOf: swiftSettings)
	target.swiftSettings = settings
}
