# TopOn - iOS Smartdigimkt ADX Mediation Adapter

The TopOn Smartdigimkt ADX mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNMediationAdxSmartdigimktAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNMediationAdxSmartdigimktAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNMediationAdxSmartdigimktAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM) (>= 6.5.60)
- [`SmartdigimktSDK`](https://github.com/onpro-ads/onproSDK_Spm)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
