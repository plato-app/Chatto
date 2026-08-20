// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Chatto",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "Chatto", targets: ["Chatto"]),
        .library(name: "ChattoAdditions", targets: ["ChattoAdditions"])
    ],
    targets: [
        .target(
            name: "Chatto",
            path: "Chatto/Source",
            exclude: ["Info.plist"]
        ),
        .target(
            name: "ChattoAdditions",
            dependencies: ["Chatto"],
            path: "ChattoAdditions/Source",
            exclude: ["Info.plist"],
            resources: [
                .process("Input/ChatInputBar.xib"),
                .process("Input/Text/Text.xcassets"),
                .process("Input/Photos/Photos.xcassets"),
                .process("UI Components/CircleProgressIndicatorView/CircleProgressIndicator.xcassets"),
                .process("Chat Items/BaseMessage/Views/BaseMessageAssets.xcassets"),
                .process("Chat Items/PhotoMessages/Views/PhotoMessageAssets.xcassets")
            ]
        )
    ]
)
