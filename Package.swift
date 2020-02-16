// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "BetterPreviewDevice",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "BetterPreviewDevice",
            targets: ["BetterPreviewDevice"]),
    ],
    targets: [
        .target(
            name: "BetterPreviewDevice"),
        .testTarget(
            name: "BetterPreviewDeviceTests",
            dependencies: ["BetterPreviewDevice"]),
    ]
)
