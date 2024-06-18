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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.0.46-blockchain/WalletCore.xcframework.zip",
            checksum: "49480c56d76e617d1580ccf08f16f990f7aedee9a1d126a287061e989aefdd24"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.0.46-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "c0bebd99b026e163fe7c4e54d731abac5585587e412e6da3abf138903c8fe558"
        )
    ]
)
