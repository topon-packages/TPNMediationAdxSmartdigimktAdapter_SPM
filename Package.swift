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
        .package(url: "https://github.com/onpro-ads/onproSDK_Spm", exact: "6.5.86")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/60586.2.10/AnyThinkSmartdigimktAdapter-60586.2.10.zip",
            checksum: "f414dbc3bbf6238445e2831b55a55d67735359548054d1930f3df13837be7e87"
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