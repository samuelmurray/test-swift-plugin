// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPlugin",
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]
        ),
        .plugin(
            name: "MyCommandPlugin",
            targets: ["MyCommandPlugin"]
        ),
        .plugin(
            name: "MyBuildToolPlugin",
            targets: ["MyBuildToolPlugin"]
        ),
    ],
    targets: [
        .target(
            name: "MyLibrary"
        ),
        .plugin(
            name: "MyCommandPlugin",
            capability: .command(intent: .custom(
                verb: "MyCommandPlugin",
                description: "prints hello world"
            ))
        ),
        .plugin(
            name: "MyBuildToolPlugin",
            capability: .buildTool()
        ),
    ]
)
