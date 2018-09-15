// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "TILApp",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git",from: "3.0.0"),
        // 1
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.0-rc"),
    ],
    targets: [
        // 2
        .target(name: "App", dependencies: ["FluentMySQL", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)
