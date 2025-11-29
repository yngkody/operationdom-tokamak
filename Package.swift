// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "operationdom-tokamak",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.0"),
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.0"),
        .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", from: "0.19.0"),

    ],
    targets: [
        .executableTarget(
            name: "operationdom-tokamak",
            dependencies: [
                .product(name: "TokamakDOM", package: "Tokamak"),
                .product(name: "JavaScriptKit", package: "JavaScriptKit")

            ]
        )
    ]
)
