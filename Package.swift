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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.2.0-blockchain/WalletCore.xcframework.zip",
            checksum: "506eb452cc5fdd6d86d5db99985d4ccc15fb3500f0814aff249bce7b5de44e02"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.2.0-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "03295a99b844bde3ef7ff8d73184860a236da43b83a7cd352d6a4ed9646aeee5"
        )
    ]
)
