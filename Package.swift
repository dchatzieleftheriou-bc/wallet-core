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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.5-blockchain/WalletCore.xcframework.zip",
            checksum: "9d5119369e1d307f7d76bc01e8b53d83f96340eefee1ff4e064854202d2a38d5"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.5-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "f8d72b8de3668e3ecc6dedbeb81ba040a233cc951a3853c31dbb11c498199954"
        )
    ]
)
