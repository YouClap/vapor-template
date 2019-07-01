// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "vapor-template",
    dependencies: [
//        .package(url: "https://github.com/youclap/vapor-shared.git", .branch("master"))
        .package(url: "file:///Users/portellaa/Projects/YouClap/vapor-shared", .branch("master"))
    ],
    targets: [
        .target(name: "App", dependencies: ["YouClap"]),
        .target(name: "Run", dependencies: ["App"])
    ]
)
