// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "My Package",
    products: [
        .library(name: "DangerDeps", type: .dynamic, targets: ["TFApp"]),
    ],
    dependencies: [
      .package(name: "Danger", url: "https://github.com/danger/swift.git", from: "3.9.1"),
      .package(name: "DangerSwiftCoverage", url: "https://github.com/f-meloni/danger-swift-coverage", from: "1.2.1"),
      .package(name: "DangerXCodeSummary", url: "https://github.com/f-meloni/danger-swift-xcodesummary", from: "1.2.1"),
    ],
    targets: [
	   .target(name: "TFApp", dependencies: ["Danger", "DangerSwiftCoverage", "DangerXCodeSummary"], path: "TFApp/Classes/Application/", sources: ["DangerTest.swift"]),
    ]
)
