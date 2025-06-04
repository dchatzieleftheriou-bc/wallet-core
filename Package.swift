// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
        .library(name: "WalletCoreSwiftProtobuf", targets: ["WalletCoreSwiftProtobuf"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.3.4-blockchain/WalletCore.xcframework.zip",
            checksum: "43b5a923f7cd8385d728f9bd2fbab83285c30dfcc0f3a7c23001d8ff8f7b7b20"
        ),
        .binaryTarget(
            name: "WalletCoreSwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.3.4-blockchain/WalletCoreSwiftProtobuf.xcframework.zip",
            checksum: "ecb1dcefc4bf1939dac8a184eb33be1e7737a96881915bdd57eae2978b0491ab"
        )
    ]
)
