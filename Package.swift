// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationAdxSmartdigimktAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationAdxSmartdigimktAdapter",
            targets: ["TPNMediationAdxSmartdigimktAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/onpro-ads/onproSDK_Spm", exact: "6.0.1")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/6.5.80.2.9/AnyThinkSmartdigimktAdapter-6.5.80.2.9.zip",
            checksum: "4f294cf69ad76d150e7e5ef328fad1efe25b21c876d24b1d53573c871876f1dc"
        ),
        .target(
            name: "TPNMediationAdxSmartdigimktAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "SmartdigimktSDK", package: "onproSDK_Spm")
            ],
            path: "Sources/TPNMediationAdxSmartdigimktAdapterTarget"
        )
    ]
)