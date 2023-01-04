// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "GPBusinessCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "AppAuth", targets: ["AppAuth"]),
        .library(name: "Appearance", targets: ["Appearance"]),
        .library(name: "AppsFlyerLib", targets: ["AppsFlyerLib"]),
        .library(name: "BoringSSL-GRPC", targets: ["BoringSSL-GRPC"]),
        .library(name: "Cosmos", targets: ["Cosmos"]),
        .library(name: "FBLPromises", targets: ["FBLPromises"]),
        .library(name: "FirebaseABTesting", targets: ["FirebaseABTesting"]),
        .library(name: "FirebaseAnalytics", targets: ["FirebaseAnalytics"]),
        .library(name: "FirebaseAnalyticsOnDeviceConversion", targets: ["FirebaseAnalyticsOnDeviceConversion"]),
        .library(name: "FirebaseAnalyticsSwift", targets: ["FirebaseAnalyticsSwift"]),
        .library(name: "FirebaseAppCheck", targets: ["FirebaseAppCheck"]),
        .library(name: "FirebaseAppCheckInterop", targets: ["FirebaseAppCheckInterop"]),
        .library(name: "FirebaseAppDistribution", targets: ["FirebaseAppDistribution"]),
        .library(name: "FirebaseAuth", targets: ["FirebaseAuth"]),
        .library(name: "FirebaseAuthInterop", targets: ["FirebaseAuthInterop"]),
        .library(name: "FirebaseCore", targets: ["FirebaseCore"]),
        .library(name: "FirebaseCoreDiagnostics", targets: ["FirebaseCoreDiagnostics"]),
        .library(name: "FirebaseCoreExtension", targets: ["FirebaseCoreExtension"]),
        .library(name: "FirebaseCoreInternal", targets: ["FirebaseCoreInternal"]),
        .library(name: "FirebaseCrashlytics", targets: ["FirebaseCrashlytics"]),
        .library(name: "FirebaseDatabase", targets: ["FirebaseDatabase"]),
        .library(name: "FirebaseDatabaseSwift", targets: ["FirebaseDatabaseSwift"]),
        .library(name: "FirebaseDynamicLinks", targets: ["FirebaseDynamicLinks"]),
        .library(name: "FirebaseFirestore", targets: ["FirebaseFirestore"]),
        .library(name: "FirebaseFirestoreSwift", targets: ["FirebaseFirestoreSwift"]),
        .library(name: "FirebaseFunctions", targets: ["FirebaseFunctions"]),
        .library(name: "FirebaseInAppMessaging", targets: ["FirebaseInAppMessaging"]),
        .library(name: "FirebaseInAppMessagingSwift", targets: ["FirebaseInAppMessagingSwift"]),
        .library(name: "FirebaseInstallations", targets: ["FirebaseInstallations"]),
        .library(name: "FirebaseMLModelDownloader", targets: ["FirebaseMLModelDownloader"]),
        .library(name: "FirebaseMessaging", targets: ["FirebaseMessaging"]),
        .library(name: "FirebaseMessagingInterop", targets: ["FirebaseMessagingInterop"]),
        .library(name: "FirebasePerformance", targets: ["FirebasePerformance"]),
        .library(name: "FirebaseRemoteConfig", targets: ["FirebaseRemoteConfig"]),
        .library(name: "FirebaseRemoteConfigSwift", targets: ["FirebaseRemoteConfigSwift"]),
        .library(name: "FirebaseSharedSwift", targets: ["FirebaseSharedSwift"]),
        .library(name: "FirebaseStorage", targets: ["FirebaseStorage"]),
        .library(name: "FirebaseStorageInternal", targets: ["FirebaseStorageInternal"]),
        .library(name: "FontAwesome_swift", targets: ["FontAwesome_swift"]),
        .library(name: "GTMAppAuth", targets: ["GTMAppAuth"]),
        .library(name: "GTMSessionFetcher", targets: ["GTMSessionFetcher"]),
        .library(name: "GoogleAppMeasurement", targets: ["GoogleAppMeasurement"]),
        .library(name: "GoogleAppMeasurementIdentitySupport", targets: ["GoogleAppMeasurementIdentitySupport"]),
        .library(name: "GoogleAppMeasurementOnDeviceConversion", targets: ["GoogleAppMeasurementOnDeviceConversion"]),
        .library(name: "GoogleDataTransport", targets: ["GoogleDataTransport"]),
        .library(name: "GoogleMobileAds", targets: ["GoogleMobileAds"]),
        .library(name: "GoogleSignIn", targets: ["GoogleSignIn"]),
        .library(name: "GoogleUtilities", targets: ["GoogleUtilities"]),
        .library(name: "KYNavigationProgress", targets: ["KYNavigationProgress"]),
        .library(name: "Libuv-gRPC", targets: ["Libuv-gRPC"]),
        .library(name: "Prism", targets: ["Prism"]),
        .library(name: "PusherSwift", targets: ["PusherSwift"]),
        .library(name: "Reachability", targets: ["Reachability"]),
        .library(name: "SDWebImage", targets: ["SDWebImage"]),
        .library(name: "SnapKit", targets: ["SnapKit"]),
        .library(name: "Starscream", targets: ["Starscream"]),
        .library(name: "SwiftProtobuf", targets: ["SwiftProtobuf"]),
        .library(name: "SwiftyGif", targets: ["SwiftyGif"]),
        .library(name: "UIColor_Hex_Swift", targets: ["UIColor_Hex_Swift"]),
        .library(name: "UserMessagingPlatform", targets: ["UserMessagingPlatform"]),
        .library(name: "abseil", targets: ["abseil"]),
        .library(name: "gRPC-C++", targets: ["gRPC-C++"]),
        .library(name: "gRPC-Core", targets: ["gRPC-Core"]),
        .library(name: "leveldb-library", targets: ["leveldb-library"]),
        .library(name: "nanopb", targets: ["nanopb"])
    ],
    targets: [
        .binaryTarget(
            name: "AppAuth",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/AppAuth/AppAuth-9.6.0.xcframework.zip",
            checksum: "0b1f1cb9ac42714215a792762693ce40bcda487b2b46c48abbc94a6b0b060f9e"
        ),
        .binaryTarget(
            name: "Appearance",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Appearance/Appearance-3.6.5.xcframework.zip",
            checksum: "905494c72a277413eb7f6fee26f44d62446afbf8135d67d02d074ee4dc5b45dd"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/AppsFlyerLib/AppsFlyerLib-6.4.3.xcframework.zip",
            checksum: "59fc9a49a55ae10780d2a9dff62b886043e4ec9e11b81d8ce6f1032b6112705a"
        ),
        .binaryTarget(
            name: "BoringSSL-GRPC",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/BoringSSL-GRPC/BoringSSL-GRPC-9.6.0.xcframework.zip",
            checksum: "8dd3a662a0a70c7f99969c30eefd941481c4ddfbb629672a1a53855ce0350562"
        ),
        .binaryTarget(
            name: "Cosmos",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Cosmos/Cosmos-16.0.0.xcframework.zip",
            checksum: "9696b345537358d6c334aede5db87b7f65cbee346a4d5ea8853d126ad0f60ad2"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FBLPromises/FBLPromises-9.6.0.xcframework.zip",
            checksum: "9c2497264762725a2c730127a8136294415fd07f9342d4471d5c3175aea69be6"
        ),
        .binaryTarget(
            name: "FirebaseABTesting",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseABTesting/FirebaseABTesting-9.6.0.xcframework.zip",
            checksum: "546e2d08ca8feeed2453cbee5a880cf043907086c51c755d82e192245807ce33"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAnalytics/FirebaseAnalytics-9.6.0.xcframework.zip",
            checksum: "d2dbe8a0ac75619defeef9f61e1608c64bc69df64a7b1035638cdfd69a94aed5"
        ),
        .binaryTarget(
            name: "FirebaseAnalyticsOnDeviceConversion",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAnalyticsOnDeviceConversion/FirebaseAnalyticsOnDeviceConversion-9.6.0.xcframework.zip",
            checksum: "dc58ce973fbb459e0afa9591248053190f0dc2c57597a99fa32c5affc8583ccb"
        ),
        .binaryTarget(
            name: "FirebaseAnalyticsSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAnalyticsSwift/FirebaseAnalyticsSwift-9.6.0.xcframework.zip",
            checksum: "3ce3006ef94eb6d086948c34ea941e904b012f1a0a3bba1c8c0f2354ce2c9e8d"
        ),
        .binaryTarget(
            name: "FirebaseAppCheck",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAppCheck/FirebaseAppCheck-9.6.0.xcframework.zip",
            checksum: "2665b24fe86ac77fad5f1d029938225bcf1444e0bf1d93e3dc130e9d162ce4cc"
        ),
        .binaryTarget(
            name: "FirebaseAppCheckInterop",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAppCheckInterop/FirebaseAppCheckInterop-9.6.0.xcframework.zip",
            checksum: "ebff55da4a94e908d5e81b23d32df984e1f9920476adf5e21a55ae13b5f6b6cd"
        ),
        .binaryTarget(
            name: "FirebaseAppDistribution",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAppDistribution/FirebaseAppDistribution-9.6.0.xcframework.zip",
            checksum: "0903a8c7711e12fde2e768308fd37bfdda2d49586d2ec7735db84bcaf095a243"
        ),
        .binaryTarget(
            name: "FirebaseAuth",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAuth/FirebaseAuth-9.6.0.xcframework.zip",
            checksum: "83845c24bfc8ddb9edf69100d247ed927fb20767788274fec272a82729653dc9"
        ),
        .binaryTarget(
            name: "FirebaseAuthInterop",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseAuthInterop/FirebaseAuthInterop-9.6.0.xcframework.zip",
            checksum: "f83f7a49379e88358dd8512a8f32a44d04b6645d9bd29dc27fc17e605e783ef5"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCore/FirebaseCore-9.6.0.xcframework.zip",
            checksum: "21152e011d9c7c618c63c66e8cb3fff22823ac32f2dde54f714685f963a9a8dd"
        ),
        .binaryTarget(
            name: "FirebaseCoreDiagnostics",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCoreDiagnostics/FirebaseCoreDiagnostics-9.6.0.xcframework.zip",
            checksum: "d31e045ad21c5afe6ed1739ddbda092fb02c357395ea0ecd708b42be185af91f"
        ),
        .binaryTarget(
            name: "FirebaseCoreExtension",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCoreExtension/FirebaseCoreExtension-9.6.0.xcframework.zip",
            checksum: "8a26b5dadcccb8db5018894205ff9aba07f81bd5f07dcf47653c72c8d3ea6dff"
        ),
        .binaryTarget(
            name: "FirebaseCoreInternal",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCoreInternal/FirebaseCoreInternal-9.6.0.xcframework.zip",
            checksum: "780624b801066db0db4c4c8580b61704b6dcc4f061c52b8623d247dfb15c5be4"
        ),
        .binaryTarget(
            name: "FirebaseCrashlytics",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseCrashlytics/FirebaseCrashlytics-9.6.0.xcframework.zip",
            checksum: "c802853fa63ffaed7af0cb70e36af6b3c2963e6f648fb1f2c3b38ccb43de9be6"
        ),
        .binaryTarget(
            name: "FirebaseDatabase",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseDatabase/FirebaseDatabase-9.6.0.xcframework.zip",
            checksum: "6d15b948f166cf93826b2febf44395bb57f92e70098be9936614ec6b3098de7e"
        ),
        .binaryTarget(
            name: "FirebaseDatabaseSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseDatabaseSwift/FirebaseDatabaseSwift-9.6.0.xcframework.zip",
            checksum: "3c8a1f098082aa12db5ec90a4779eae0544e5df4202cd60b8e8419d22638ea08"
        ),
        .binaryTarget(
            name: "FirebaseDynamicLinks",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseDynamicLinks/FirebaseDynamicLinks-9.6.0.xcframework.zip",
            checksum: "7c2c5d7aadca0b3646fb4796661c0d20110f7392d186c960dc3fbb1014a24886"
        ),
        .binaryTarget(
            name: "FirebaseFirestore",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseFirestore/FirebaseFirestore-9.6.0.xcframework.zip",
            checksum: "8af1434e394c4fc1ae7105dd511c5c3363bd53eba5ea7fa8c0b21366202c4405"
        ),
        .binaryTarget(
            name: "FirebaseFirestoreSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseFirestoreSwift/FirebaseFirestoreSwift-9.6.0.xcframework.zip",
            checksum: "86c741f3094e80ba84e829881e609594555a42fa0cd1bb3b456a4d33f5f14471"
        ),
        .binaryTarget(
            name: "FirebaseFunctions",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseFunctions/FirebaseFunctions-9.6.0.xcframework.zip",
            checksum: "92853df226bfd504a22e1f4ee28e4d2a180adbb44e9cf49e01702452d04ed90f"
        ),
        .binaryTarget(
            name: "FirebaseInAppMessaging",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseInAppMessaging/FirebaseInAppMessaging-9.6.0.xcframework.zip",
            checksum: "0fbc08d7b55e3dfedef122a8e088edf2d24a1244cb833381014093fd1ed33eb4"
        ),
        .binaryTarget(
            name: "FirebaseInAppMessagingSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseInAppMessagingSwift/FirebaseInAppMessagingSwift-9.6.0.xcframework.zip",
            checksum: "d7b2702bbc7413bb0cc0dc29f7e56fcf23c36d9e1ab47681d2b0adaa9c264578"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseInstallations/FirebaseInstallations-9.6.0.xcframework.zip",
            checksum: "725df37c610f36e34af7af1c6acb9f1140c731dc279e318a697b2e4917c5d87b"
        ),
        .binaryTarget(
            name: "FirebaseMLModelDownloader",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseMLModelDownloader/FirebaseMLModelDownloader-9.6.0.xcframework.zip",
            checksum: "b277f761b464a30ed0580f35a488dfbedd89df394c1a22d82c5caf572236db8c"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseMessaging/FirebaseMessaging-9.6.0.xcframework.zip",
            checksum: "97e36c44b63d90c3c82f7872e101eaa0dad974b78f5b7db61069d0bd4de84bb5"
        ),
        .binaryTarget(
            name: "FirebaseMessagingInterop",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseMessagingInterop/FirebaseMessagingInterop-9.6.0.xcframework.zip",
            checksum: "28142f250dc9447101aa18b92121207c55bf44c9f8b31e96e19398bf40d4475e"
        ),
        .binaryTarget(
            name: "FirebasePerformance",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebasePerformance/FirebasePerformance-9.6.0.xcframework.zip",
            checksum: "08b2fc923916247ad7ac556fa46b0afda7997032361e94cb72c39e6de4236ed0"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfig",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseRemoteConfig/FirebaseRemoteConfig-9.6.0.xcframework.zip",
            checksum: "ea38aa700c9f92bfdfeb8ce1e782430b9db107cb7e7c1783228a43d8179b544b"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfigSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseRemoteConfigSwift/FirebaseRemoteConfigSwift-9.6.0.xcframework.zip",
            checksum: "1a49675f3573c7623980e95627c998a2cbc09cc903d27b8c450771d53e800fa0"
        ),
        .binaryTarget(
            name: "FirebaseSharedSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseSharedSwift/FirebaseSharedSwift-9.6.0.xcframework.zip",
            checksum: "39c9b459ad1394cbca8e3696d80a7f14beb904b57438803a25e2533f94ee51f8"
        ),
        .binaryTarget(
            name: "FirebaseStorage",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseStorage/FirebaseStorage-9.6.0.xcframework.zip",
            checksum: "371dd791cbb284423906226be920ade2475b39f84ab441200088b0470b5eba47"
        ),
        .binaryTarget(
            name: "FirebaseStorageInternal",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FirebaseStorageInternal/FirebaseStorageInternal-9.6.0.xcframework.zip",
            checksum: "c346829b59a21766902361b76c565dc3424f51d056e66b97361c2f80ffa369db"
        ),
        .binaryTarget(
            name: "FontAwesome_swift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/FontAwesome_swift/FontAwesome_swift-1.3.2.xcframework.zip",
            checksum: "d03b9a1f8a3cc37e8f351da53c62a6395bdca0b4c0a42bc93440d5bb3a5bed05"
        ),
        .binaryTarget(
            name: "GTMAppAuth",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GTMAppAuth/GTMAppAuth-9.6.0.xcframework.zip",
            checksum: "8fd362fc27151f41394c3e14b0bd5dc4029437dc945d2035d0184f8b52b92a88"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GTMSessionFetcher/GTMSessionFetcher-9.6.0.xcframework.zip",
            checksum: "07bb4a87f3037d390e35766a034d26765a8bac112296f61a789fac4703720131"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleAppMeasurement/GoogleAppMeasurement-9.6.0.xcframework.zip",
            checksum: "33024e7157ef23879a2df2ce5417740ba6cd40fe2aa597543091ecfca48c8be8"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleAppMeasurementIdentitySupport/GoogleAppMeasurementIdentitySupport-9.6.0.xcframework.zip",
            checksum: "8fc5bfbb16f6eeb71e5e65aad5f723984521590a155410dc1321b6537271a3bb"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementOnDeviceConversion",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleAppMeasurementOnDeviceConversion/GoogleAppMeasurementOnDeviceConversion-9.6.0.xcframework.zip",
            checksum: "964f7c28038220196fed86804b2c1aaa38ea95449ea628fee6977d46ad269f57"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleDataTransport/GoogleDataTransport-9.6.0.xcframework.zip",
            checksum: "cbbf9146ae633fd8046fbf40acc16c322e0b6c395fdc0ec253520c2fba122777"
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleMobileAds/GoogleMobileAds-9.6.0.xcframework.zip",
            checksum: "3498163ed17c26e39c1297935f17fbc1f2cf6a00de8fbe6067a463d0f3792839"
        ),
        .binaryTarget(
            name: "GoogleSignIn",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleSignIn/GoogleSignIn-9.6.0.xcframework.zip",
            checksum: "5f98baab5c7c07d6b59c243f3cbb2e50ad81da19fa557e7f71cec40d86440002"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/GoogleUtilities/GoogleUtilities-9.6.0.xcframework.zip",
            checksum: "48676fa3928d0cb39c7a168dff60548cb08b612b6e34c1453763540d2ccdc4d7"
        ),
        .binaryTarget(
            name: "KYNavigationProgress",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/KYNavigationProgress/KYNavigationProgress-2.0.2.xcframework.zip",
            checksum: "11a4e065b07ee97d2ab29c02caec86e6cb2b9e5af0227dedbff379c70db53d56"
        ),
        .binaryTarget(
            name: "Libuv-gRPC",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Libuv-gRPC/Libuv-gRPC-9.6.0.xcframework.zip",
            checksum: "6944a7b0de264a53a0391b466ddf529194bea9de68e2310c8eb0d2bb76003840"
        ),
        .binaryTarget(
            name: "Prism",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Prism/Prism-0.1.54.xcframework.zip",
            checksum: "66e91a3633f58ebff34daabad03c5e804e5cb1a048027291b5c6c8623542fcf7"
        ),
        .binaryTarget(
            name: "PusherSwift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/PusherSwift/PusherSwift-8.0.0.xcframework.zip",
            checksum: "a6fc390c60f03431a9115bdf3792825bd983ad4042caeb3a22030c03796bc81f"
        ),
        .binaryTarget(
            name: "Reachability",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Reachability/Reachability-8.0.0.xcframework.zip",
            checksum: "ea331745ee3ba4a2dd3ea1c0d692a8536e029ad5536fd783cbcaaef562ac95b7"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SDWebImage/SDWebImage-5.11.1.xcframework.zip",
            checksum: "5e2cb335da88caefb180658d638accc45b699a19ec6d39c8ba0e76ac5c0999e8"
        ),
        .binaryTarget(
            name: "SnapKit",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SnapKit/SnapKit-4.2.0.xcframework.zip",
            checksum: "b5d570384b80404924e18e06e8eb7d19f9a7845b830b6fe1cb7c12e7e164b640"
        ),
        .binaryTarget(
            name: "Starscream",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/Starscream/Starscream-3.1.xcframework.zip",
            checksum: "173663ef0b2d8a2eec34f433689a1b12752f8695752643481e01f22c5726244d"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SwiftProtobuf/SwiftProtobuf-9.6.0.xcframework.zip",
            checksum: "791bff5c72bb1f77287a7ebf0c6d7f817d376ba18c4924d566f16f35ff953394"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/SwiftyGif/SwiftyGif-5.0.1.xcframework.zip",
            checksum: "960e9730ce74dc5c1405e887e527b7f7e36e823defe25c4702ec68d72aff8a95"
        ),
        .binaryTarget(
            name: "UIColor_Hex_Swift",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/UIColor_Hex_Swift/UIColor_Hex_Swift-5.1.0.xcframework.zip",
            checksum: "80b261f797bd45e4e60f4c2a6a598520f5a987283780bff7787eec7305ab432f"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/UserMessagingPlatform/UserMessagingPlatform-9.6.0.xcframework.zip",
            checksum: "7fdc9764e466dfd4bcae175725fddfb845a3346140d4492c9e800a3c9bc511ce"
        ),
        .binaryTarget(
            name: "abseil",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/abseil/abseil-9.6.0.xcframework.zip",
            checksum: "6ae075c5bcf449b770134f48a31b92a85e37cd4408a22359821131e6f43bc9b3"
        ),
        .binaryTarget(
            name: "gRPC-C++",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/gRPC-C++/gRPC-C++-9.6.0.xcframework.zip",
            checksum: "ef39afb076daf2ce07a63ebf53359eeac428dcd81bd81095fae4f2cc76687679"
        ),
        .binaryTarget(
            name: "gRPC-Core",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/gRPC-Core/gRPC-Core-9.6.0.xcframework.zip",
            checksum: "59a545d92528e4c404a18333590af3e831767d7a442bf7344737904d3bca2f37"
        ),
        .binaryTarget(
            name: "leveldb-library",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/leveldb-library/leveldb-library-9.6.0.xcframework.zip",
            checksum: "95733f74dc7796a12ed2e62fcc7730faae87a312ee1b502f06b0c0b9b43918af"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "https://tkww-ios-scipio.mobileapps.theknot.com/nanopb/nanopb-9.6.0.xcframework.zip",
            checksum: "89f9f9d519bed79f9d5df0a43fe4f277433f245b2d8ef3542faa7f2402c3b91e"
        )
    ]
)
