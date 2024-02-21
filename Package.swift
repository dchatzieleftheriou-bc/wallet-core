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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.0.24-blockchain/WalletCore.xcframework.zip",
            checksum: "1ba704d0b61156b059c736c1da368ab0bed3b572bd0ead83a820ef65c3ccc4c1"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.0.24-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "8d254ab973b78ca2243dd5c2941052623356686f26f159fbef7925dc72308542"
        )
    ]
)
