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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.0-blockchain/WalletCore.xcframework.zip",
            checksum: "8b4da26a7b7d471ce292840429f4c481ec3e3a57a16efc05158fdf2656e3ef28"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.0-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "1f1ccd5357f09d88ad55c70cbb5eb460d5b170372026b7fcdfdb9ce2b49b9790"
        )
    ]
)
