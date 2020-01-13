// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SignalProtocolSwift",
    products: [
        .library(
            name: "SignalProtocolSwift",
            targets: ["SignalProtocolSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Re-cover/SignalProtocolC.git", .revision("18bc4e01340a47e5e65d9175bc93c2c119f774d2"))
    ],
    targets: [
        .target(
            name: "SignalProtocolSwift",
            dependencies: ["SignalProtocolC"],
            path: "SignalProtocolSwift"
        )
    ]
)
