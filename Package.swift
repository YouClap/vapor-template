// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "vapor-template",
    dependencies: [
        .package(url: "https://github.com/youclap/vapor-shared.git", from: "0.4.2")
    ],
    targets: [
        .target(name: "App", dependencies: ["YouClap"]),
        .target(name: "Run", dependencies: ["App"])
    ]
)
