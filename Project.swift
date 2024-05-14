import ProjectDescription

let project = Project(
    name: "PositiveNewsApp",
    targets: [
        .target(
            name: "PositiveNewsApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.PositiveNewsApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["PositiveNewsApp/Sources/**"],
            resources: ["PositiveNewsApp/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "PositiveNewsAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.PositiveNewsAppTests",
            infoPlist: .default,
            sources: ["PositiveNewsApp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "PositiveNewsApp")]
        ),
    ]
)
