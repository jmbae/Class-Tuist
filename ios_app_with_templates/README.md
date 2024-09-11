# iOS 앱 템플릿 with Tuist

이 프로젝트는 Tuist를 사용하여 iOS 앱 템플릿을 생성하고 관리하는 방법을 설명합니다.

## Tuist 소개

Tuist는 Xcode 프로젝트 관리를 위한 강력한 도구입니다. 프로젝트 구조를 코드로 정의하고, 모듈화를 쉽게 만들며, 대규모 iOS 프로젝트를 효율적으로 관리할 수 있게 해줍니다.

## 템플릿 사용하기

1. Tuist 설치:

    ```bash
    bash <(curl -Ls https://install.tuist.io)
    ```

2. 새 프로젝트 생성:

    ```bash
    tuist init --platform ios --template https://github.com/your-template-repo.git
    ```

3. 프로젝트 생성:

    ```bash
    tuist generate
    ```

## 파일 구조

- `Project.swift`: 프로젝트 설정 정의
- `Targets/`: 각 타겟에 대한 설정 파일
- `Tuist/`: Tuist 관련 설정 및 템플릿 파일
- `Templates/`: 커스텀 템플릿 정의

## 커스텀 템플릿 만들기

1. `Tuist/Templates/` 디렉토리에 새 템플릿 폴더 생성
2. `Template.swift` 파일에 템플릿 정의
3. 템플릿 사용:

    ```bash
    tuist scaffold MyTemplate
    ```

## 주의사항

- 템플릿 사용 시 항상 최신 버전의 Tuist를 사용하세요.
- 프로젝트 구조 변경 시 `tuist edit` 명령어를 활용하세요.

더 자세한 정보는 [Tuist 공식 문서](https://docs.tuist.io)를 참조하세요.
