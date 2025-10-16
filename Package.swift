// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKit-1.5.1-29-gdec2fc5f8b-fb841b20-cb3f-4317-92e9-d26b26ff3d8a.xcframework.zip"
let remoteKotlinChecksum = "d700fed69ada0187c658e49bc014b031db2984f0187f76e2672ce1139cd61e26"
let packageName = "RealtimeKit"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "RealtimeKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: packageName, targets: [packageName, "RTKWebRTC"]),
        .library(name: "RTKWebRTC", targets: ["RTKWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "RTKWebRTC",
            url: "https://sdk-assets.realtime.cloudflare.com/RTKWebRTC-v125.6422.07.zip",
            checksum: "114cb3ea15c5709f2c35d2b1c7a64e742a6902d375d54895984263bb79d75ce3"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
