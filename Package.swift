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
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.14-blockchain/WalletCore.xcframework.zip",
            checksum: "3184383e8dd98513dc61499deba61e8ceaaf993a6c9835c4efcdc98a3bc3a102"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/dchatzieleftheriou-bc/wallet-core/releases/download/4.1.14-blockchain/SwiftProtobuf.xcframework.zip",
            checksum: "41ade37545ef7a264b287c42632f434f4046578dc002123abc139435ffc52395"
        )
    ]
)
