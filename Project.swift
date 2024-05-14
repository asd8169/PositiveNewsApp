import ProjectDescription

// Project의 기본 설정을 정의
let project = Project(
    // 프로젝트 이름
    name: "PositiveNewsApp",
    // 프로젝트의 타겟들을 정의
    targets: [
        // 메인 앱 타겟을 정의
        .target(
            // 타겟 이름
            name: "PositiveNewsApp",
            // 타겟의 플랫폼을 iOS로 설정
            destinations: .iOS,
            // 타겟의 제품 유형을 앱으로 설정
            product: .app,
            // 번들 ID 설정
            bundleId: "com.asd8169.PositiveNewsApp",
            // 기본 Info.plist 설정을 확장하여 추가 설정
            infoPlist: .extendingDefault(
                with: [
                    // 런치 스토리보드 이름 설정
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            // 소스 파일 경로 설정
            sources: ["PositiveNewsApp/Sources/**"],
            // 리소스 파일 경로 설정
            resources: ["PositiveNewsApp/Resources/**"],
            // 종속성 설정
            dependencies: [ .target(name: "Presentation"),
                            .target(name: "Domain"),
                            .target(name: "Data"),
            ]
        ),
        .target(
            // 타겟 이름
            name: "Presentation",
            // 타겟의 플랫폼을 iOS로 설정
            destinations: .iOS,
            
            product: .framework,
            // 번들 ID 설정
            bundleId: "com.asd8169.Presentation",
            
            infoPlist: .default,
            // 소스 파일 경로 설정
            sources: ["PositiveNewsApp/Sources/Presentation/**"],
            // 종속성 설정
            dependencies: [ .target(name: "Domain"),
                          ]
        ),
        .target(
            // 타겟 이름
            name: "Domain",
            // 타겟의 플랫폼을 iOS로 설정
            destinations: .iOS,
            
            product: .framework,
            // 번들 ID 설정
            bundleId: "com.asd8169.Domain",
            
            infoPlist: .default,
            // 소스 파일 경로 설정
            sources: ["PositiveNewsApp/Sources/Domain/**"],
            // 종속성 설정
            dependencies: []
        ),
        .target(
            // 타겟 이름
            name: "Data",
            // 타겟의 플랫폼을 iOS로 설정
            destinations: .iOS,
            
            product: .framework,
            // 번들 ID 설정
            bundleId: "com.asd8169.Data",
            
            infoPlist: .default,
            // 소스 파일 경로 설정
            sources: ["PositiveNewsApp/Sources/Data/**"],
            // 종속성 설정
            dependencies: [
                .target(name: "Domain")
            ]
        ),
        
        // 테스트 타겟을 정의
        .target(
            // 테스트 타겟 이름
            name: "PositiveNewsAppTests",
            // 타겟의 플랫폼을 iOS로 설정
            destinations: .iOS,
            // 타겟의 제품 유형을 유닛 테스트로 설정
            product: .unitTests,
            // 번들 ID 설정
            bundleId: "com.asd8169.PositiveNewsAppTests",
            // 기본 Info.plist 설정 사용
            infoPlist: .default,
            // 소스 파일 경로 설정
            sources: ["PositiveNewsApp/Tests/**"],
            // 리소스 파일 경로 설정 (현재는 없음)
            resources: [],
            // 종속성 설정 (메인 앱 타겟을 종속성으로 설정)
            dependencies: [.target(name: "PositiveNewsApp")]
        ),
    ]
)
