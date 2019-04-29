// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "vapor-template",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.3.0"),
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "6.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "ReactiveSwift"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
