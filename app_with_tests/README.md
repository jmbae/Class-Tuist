# Tuist를 사용한 iOS 앱 프로젝트

이 프로젝트는 Tuist를 사용하여 구성된 iOS 앱 예제입니다. Tuist는 Xcode 프로젝트 관리를 간소화하고 일관성 있는 프로젝트 구조를 유지하는 데 도움을 주는 도구입니다.

## 프로젝트 구조

- `App/`: 메인 앱 타겟
- `AppTests/`: 앱 유닛 테스트
- `AppUITests/`: 앱 UI 테스트

## Tuist 사용 방법

1. Tuist 설치 (아직 설치하지 않은 경우):

   ```bash
   bash <(curl -Ls https://install.tuist.io)
   ```

2. 프로젝트 생성:

   ```bash
   tuist generate
   ```

3. Xcode에서 프로젝트 열기:

   ```bash
   tuist edit
   ```

## 주요 기능

- 모듈화된 프로젝트 구조
- 자동화된 의존성 관리
- 일관된 프로젝트 설정

## 테스트 실행

```bash
tuist test
```

이 명령어로 모든 유닛 테스트와 UI 테스트를 실행할 수 있습니다.

## 기여 방법

프로젝트에 기여하고 싶으시다면, 풀 리퀘스트를 보내주세요. 모든 기여는 환영합니다!

## 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다. 자세한 내용은 `LICENSE` 파일을 참조하세요.
