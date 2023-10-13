// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EDOProCore",
    products: [
        .library(
            name: "CLua",
            type: .static,
            targets: ["CLua"]
        ),
        .library(
            name: "EDOProCore",
            type: .static,
            targets: ["EDOProCore"]
        ),
    ],
    targets: [
        .target(
            name: "CLua",
            exclude: ["lua.c", "luac.c"]
        ),
        .target(
            name: "EDOProCoreCxx",
            dependencies: ["CLua"]
        ),
        .target(
            name: "EDOProCore",
            dependencies: ["EDOProCoreCxx"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .testTarget(
            name: "EDOProCoreTests",
            dependencies: ["EDOProCore"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ],
    cxxLanguageStandard: .gnucxx17
)
