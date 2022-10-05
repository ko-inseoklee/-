# teeth_outsourcing

A new Flutter project.

## Getting Started

### 구동환경
- Mac OS
- 애플 개발자 계정(정식등록 계정 or 일반 가입자 계정)
- IDE: Android Studio(애플 칩셋에 따라 Intel version과 silicon 버전이 나뉘어 있습니다.)
- Flutter SDK: 2.2.0 stable
- Dart SDK: 2.18.1
- Xcode: 13.0 이상
- 9.0 <= IOS version < 16.0 (16 이상은 현재 Xcode에서도 지원하지 않습니다.)

### 실행 방법
1. 로컬로 프로젝트 소스파일을 clone 합니다.
2. 안드로이드 스튜디오에 프로젝트를 Import 합니다.
3. 소스 폴더 내에 ios/runner.xcworkspace를 finder에서 엽니다(안드로이드 스튜디오에서 runner.xcworkspace 우클릭 -> Open In 옵션 -> finder 선택).
4. runner.xcworkspace를 실행하여 xcode로 진입합니다.
5. 왼쪽 상단 폴더 아이콘 클릭 -> 최상단 Runner 클릭 -> 메뉴 중 Signing & Capabilities 클릭
6. Automatically Manage Signing 체크하고 아래 팀 선택(애플 개발자 계정 필요) 후 빌드
    
    6-1. 애플 정식 등록 계정이 있는 경우(IPA 파일 추출을 원하시는 경우 **결제 완료**된 애플 개발자 계정이 필요)
   1. 최상단 Xcode 메뉴 -> product -> Archieve 클릭
   2. 성공 후 우측 상단 Distribute App 클릭
   3. 네 가지 옵션 중 Development 클릭
   4. App Thinning All compatible device 클릭 후 다음으로 계속 진행(이후는 설정할 것 없음.)
    
    6-2. 애플 결제 계정이 없는 경우(일반 사용자 등록은 필수 앱에 바로 설치하는 방식(미팅때와 같이))
      1. 일반 사용자 계정으로 팀 선택
      2. 중앙 상단 Runner 부분 클릭 -> Edit scheme 클릭
      3. Build configuration 옵션을 release or profile로 변경 (debug는 데스크탑과 연결된 상태에서만 앱 실행 가능)
      4. 디바이스 연결(연결 하면 아래 Simulator와 별개의 IOS Device 하나 뜹니다.)
      5. 중앙 상단 Runner 왼쪽 Play Icon 클릭(Build)
      6. 디바이스에 설치된 것 확인
