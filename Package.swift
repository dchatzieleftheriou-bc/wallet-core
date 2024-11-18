// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
        .library(name: "SwiftProtobuf", targets: ["SwiftProtobuf"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.17-blockchain/WalletCore.xcframework.zip",
            checksum: "bdc7511a99fffe4a399734b14091c0a3b8df1a1b8cd0ce98511b82f156429d0a"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.17-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "4def09c2817f892ecde1438de723c0a30707966111318fee210e8127f7a3c2c9"
        )
    ]
)
