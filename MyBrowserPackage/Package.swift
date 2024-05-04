// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyBrowserPackage",
    products: [
        .library(
            name: "MyBrowserPackage",
            targets: ["MyBrowserPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftty/XcodeGenBinary.git", from: "2.40.1"),
        .package(url: "https://github.com/swiftty/SwiftLintBinary.git", from: "0.54.0")
    ],
    targets: [
        .target(
            name: "MyBrowserPackage"),
        .testTarget(
            name: "MyBrowserPackageTests",
            dependencies: ["MyBrowserPackage"]),
    ]
)
