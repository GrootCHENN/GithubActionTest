// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "GPBusinessCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Appearance", targets: ["Appearance"]),
        .library(name: "AppsFlyerLib", targets: ["AppsFlyerLib"]),
        .library(name: "Cosmos", targets: ["Cosmos"]),
        .library(name: "KYNavigationProgress", targets: ["KYNavigationProgress"]),
        .library(name: "Prism", targets: ["Prism"]),
        .library(name: "PusherSwift", targets: ["PusherSwift"]),
        .library(name: "Reachability", targets: ["Reachability"]),
        .library(name: "SDWebImage", targets: ["SDWebImage"]),
        .library(name: "SnapKit", targets: ["SnapKit"]),
        .library(name: "Starscream", targets: ["Starscream"]),
        .library(name: "SwiftyGif", targets: ["SwiftyGif"]),
        .library(name: "UIColor_Hex_Swift", targets: ["UIColor_Hex_Swift"]),
        .library(name: "FBLPromises", targets: ["FBLPromises"]),
        .library(name: "FirebaseABTesting", targets: ["FirebaseABTesting"]),
        .library(name: "FirebaseAnalytics", targets: ["FirebaseAnalytics"]),
        .library(name: "FirebaseCore", targets: ["FirebaseCore"]),
        .library(name: "FirebaseCoreInternal", targets: ["FirebaseCoreInternal"]),
        .library(name: "FirebaseCrashlytics", targets: ["FirebaseCrashlytics"]),
        .library(name: "FirebaseInstallations", targets: ["FirebaseInstallations"]),
        .library(name: "FirebasePerformance", targets: ["FirebasePerformance"]),
        .library(name: "FirebaseRemoteConfig", targets: ["FirebaseRemoteConfig"]),
        .library(name: "GoogleAppMeasurement", targets: ["GoogleAppMeasurement"]),
        .library(name: "GoogleDataTransport", targets: ["GoogleDataTransport"]),
        .library(name: "GoogleUtilities", targets: ["GoogleUtilities"]),
        .library(name: "nanopb", targets: ["nanopb"]),
        .library(name: "FontAwesome_swift", targets: ["FontAwesome_swift"])
    ],
    targets: [
        .binaryTarget(
            name: "nanopb",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/nanopb/nanopb-9.6.0.xcframework.zip",
            checksum: "11ab44047f06da3a1e3c8e25c1ccd734b496e06caf27b67da705f424becde1ef"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleUtilities/GoogleUtilities-9.6.0.xcframework.zip",
            checksum: "3cd38b0c3d480a03a5964babd76e8e6f079949b2dd419375c857d66355f065ad"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleDataTransport/GoogleDataTransport-9.6.0.xcframework.zip",
            checksum: "83acad2973fddbd9fcb659145272eadcbfc591e50067fa1639e82aedc63d5658"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleAppMeasurement/GoogleAppMeasurement-9.6.0.xcframework.zip",
            checksum: "d2d78aaca4a1633c02f4ab2030b8753a5163c8fb33a1998188fd223acfc1d424"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfig",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseRemoteConfig/FirebaseRemoteConfig-9.6.0.xcframework.zip",
            checksum: "eb6c54269900a75b7e2673c32b4f8d98041b0dab8ef7c3d5f9013c16e5e91d17"
        ),
        .binaryTarget(
            name: "FirebasePerformance",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebasePerformance/FirebasePerformance-9.6.0.xcframework.zip",
            checksum: "a69cf8ff70cb74b9c1bf09f4cae3ba1287a9cde1083c9844b3fd67d9404fd917"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseInstallations/FirebaseInstallations-9.6.0.xcframework.zip",
            checksum: "9ca0f13e4317d7b003496e9b0983d68b0ac6b4697e4abcf4fbb0916dfb27469d"
        ),
        .binaryTarget(
            name: "FirebaseCrashlytics",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCrashlytics/FirebaseCrashlytics-9.6.0.xcframework.zip",
            checksum: "4487ca2b8fb1801287822b563b2657e6582b8efc76f133ccb20a587e5461d386"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCoreInternal/FirebaseCoreInternal-9.6.0.xcframework.zip",
            checksum: "18ac502f7dd5c561ce7e5954f05e3500a0a426422faeeef1ee414bb87934fb06"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCore/FirebaseCore-9.6.0.xcframework.zip",
            checksum: "d202fe70ee5d1d249e362f9f50a4cfdbbf9073e3d34588b8a0891e4062639343"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAnalytics/FirebaseAnalytics-9.6.0.xcframework.zip",
            checksum: "95681e1e1dc78efaa67765532a88070c38d2629dc483ecd2b7d60e017dac9c70"
        ),
        .binaryTarget(
            name: "FirebaseABTesting",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseABTesting/FirebaseABTesting-9.6.0.xcframework.zip",
            checksum: "0de93f0cb76be3cfd6fb4100a25ae1dcca78b3de2694da4901f467bb03695ecf"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FBLPromises/FBLPromises-9.6.0.xcframework.zip",
            checksum: "28fb31c82e396f5c175c807d07fc9683c5699c1b8ac1c3b41f46275615c18792"
        ),
        .binaryTarget(
            name: "FontAwesome_swift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FontAwesome_swift/FontAwesome_swift-1.3.2.xcframework.zip",
            checksum: "86c201ba07ff8c8731ad5ddeff5aac23c0e7e9ad585b06ac7e93ee5dd863260a"
        ),
        .binaryTarget(
            name: "Appearance",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Appearance/Appearance-3.6.5.xcframework.zip",
            checksum: "426dfa07ecde830393cfb3abd5d1e2f054ddfd41b3aa4df054ab3fa2de8561e2"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/AppsFlyerLib/AppsFlyerLib-6.4.3.xcframework.zip",
            checksum: "678b5c581cd9a69e7f0685a1083363b998eb92a261b9c9720f68475b7ec3f444"
        ),
        .binaryTarget(
            name: "Cosmos",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Cosmos/Cosmos-16.0.0.xcframework.zip",
            checksum: "28f748bf6100c548564e85297725a6d976d99eff2b37b41d84e7f3cce9dfd130"
        ),
        .binaryTarget(
            name: "KYNavigationProgress",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/KYNavigationProgress/KYNavigationProgress-2.0.2.xcframework.zip",
            checksum: "f6074dee379083edd77b8bc601e9baec7235a85473f70a470480c913744f0cb7"
        ),
        .binaryTarget(
            name: "Prism",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Prism/Prism-0.1.57.xcframework.zip",
            checksum: "09f6bd48762cd4fae294684d20a24ab9fa93d95056b14957a302952b50dcc8c9"
        ),
        .binaryTarget(
            name: "PusherSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/PusherSwift/PusherSwift-f9283eef8392201102dj.xcframework.zip",
            checksum: "0e4630eb99cc47b60a5e44283f2f4bda22d6ace07a2b0bdec7e83fa9f2f85381"
        ),
        .binaryTarget(
            name: "Reachability",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Reachability/Reachability-c01bbdf2d633cf049ae1ed1a68a2020a8bda32e2.xcframework.zip",
            checksum: "337939d215521a301d9f4cdc2a2bbe7144c5e4fc07a771738eb7f6c340941f73"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SDWebImage/SDWebImage-5.11.1.xcframework.zip",
            checksum: "f910d606e1dd80ebbb65fdd271624b1a720eca4d03fcd153533acaf7ffdaf186"
        ),
        .binaryTarget(
            name: "SnapKit",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SnapKit/SnapKit-4.2.0.xcframework.zip",
            checksum: "d2b158555068200795ed84905183f2aef98baf187e322b3a4497ffd02d8af57e"
        ),
        .binaryTarget(
            name: "Starscream",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Starscream/Starscream-a063fda2b8145a231953c20e7a646be254365396.xcframework.zip",
            checksum: "918e6d83267f6fffed79fadb7b7ac2e3da1e4b7f8cd88e924bc83fa3a17acbd7"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SwiftyGif/SwiftyGif-5.0.1.xcframework.zip",
            checksum: "af8250cdb05be1bb16746912a0f46abb2ae7edf75a3475cdaade47b2fd698d6f"
        ),
        .binaryTarget(
            name: "UIColor_Hex_Swift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/UIColor_Hex_Swift/UIColor_Hex_Swift-5.1.0.xcframework.zip",
            checksum: "75ec3729d3b35cb6be7598ff8f536a0ba20a2bf7aaa89c6e5597f0bc1be63c86"
        )
    ]
)