// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKit-1.5.1-6-gab16e48bc4-9632c5bd-06ad-4d9c-a017-fc5bf45c1b21.xcframework.zip"
let remoteKotlinChecksum = "2c4fdcdff6e6fd55661d87dbece9aed429a4ac9a9cc19e449fb0b61f6fe5db60"
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
