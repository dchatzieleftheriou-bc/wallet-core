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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.3-blockchain/WalletCore.xcframework.zip",
            checksum: "6556de1b5f7966b000108dc80847596b1da465c2aec20f24cee97b4eb9e6c1ac"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.3-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "756fc857bc872d7d20cb7b7e276f617b311442b8c35b3deacc1e911b677df477"
        )
    ]
)
