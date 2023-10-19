// swift-tools-version:5.8

import PackageDescription

let package = Package(
  name: "Sh",
  platforms: [
    .macOS(.v12),
  ],
  products: [
    .library(name: "Sh", targets: ["Sh"]),
  ],
  targets: [
    .target(name: "Sh"),
    .testTarget(name: "ShTests", dependencies: ["Sh"]),
  ])


#if os(Linux)
package.dependencies.append(
  .package(url: "https://github.com/apple/swift-system", from: "1.0.0")
)
package.targets.first!.dependencies.append(.product(name: "SystemPackage", package: "swift-system"))
#endif
