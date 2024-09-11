import ProjectDescription

let project = Project(
    name: "Core",
    targets: [
        .target(name: "Core",
                destinations: .iOS,
                product: .framework,
                bundleId: "kr.co.codegrove.Albertos.Core",
                infoPlist: .default,
                sources: ["Sources/**"],
                dependencies: []
               )
    ]
)
