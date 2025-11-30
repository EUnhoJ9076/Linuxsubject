# Simple Random Tool

간단한 랜덤 생성 기능을 제공하는 Shell 스크립트 도구입니다.

## 📋 목차

- [프로젝트 개요](#프로젝트-개요)
- [주요 기능](#주요-기능)
- [설치 및 실행](#설치-및-실행)
- [사용 방법](#사용-방법)
- [프로젝트 구조](#프로젝트-구조)
- [Git 브랜치 전략](#git-브랜치-전략)
- [개발자](#개발자)

## 프로젝트 개요

이 프로젝트는 Linux Shell 스크립트 프로그래밍과 Git/GitHub 협업을 학습하기 위해 개발된 랜덤 생성 도구입니다. 다양한 랜덤 생성 기능을 하나의 통합된 메뉴 시스템으로 제공합니다.

### 저장소
- **GitHub URL**: https://github.com/EUnhoJ9076/Linuxsubject

## 주요 기능

### 1. 랜덤 숫자 생성
- 사용자가 지정한 최소값과 최대값 사이의 랜덤 숫자를 생성합니다.
- 입력값 검증 기능 포함 (숫자만 허용, 범위 검증)

### 2. 랜덤 비밀번호 생성
- 사용자가 지정한 길이의 랜덤 비밀번호를 생성합니다.
- 영문 대소문자, 숫자, 특수문자 조합
- 기본 길이: 12자

### 3. 동전 던지기
- 앞면/뒷면을 랜덤하게 선택합니다.

### 4. 주사위 굴리기
- 1부터 6까지의 숫자를 랜덤하게 생성합니다.

### 5. 로또 번호 생성
- 1부터 45까지의 숫자 중 6개를 중복 없이 랜덤하게 생성합니다.

## 설치 및 실행

### 요구사항
- Bash Shell (Linux, macOS, WSL)

### 설치 방법

1. 저장소 클론
```bash
git clone https://github.com/EUnhoJ9076/Linuxsubject.git
cd Linuxsubject
```

2. 실행 권한 부여
```bash
chmod +x random_tool.sh
```

3. 실행
```bash
./random_tool.sh
```

또는

```bash
bash random_tool.sh
```

## 사용 방법

프로그램을 실행하면 메뉴가 표시됩니다:

```
===============================
   Simple Random Tool
===============================
1) 랜덤 숫자 생성
2) 랜덤 비밀번호 생성
3) 동전 던지기 (앞/뒤)
4) 주사위 굴리기 (1~6)
5) 로또 번호 생성 (1~45, 6개)
0) 종료
===============================
메뉴를 선택하세요:
```

원하는 기능의 번호를 입력하면 해당 기능이 실행됩니다.

### 사용 예시

#### 랜덤 숫자 생성
```
메뉴를 선택하세요: 1
최소값을 입력하세요: 1
최대값을 입력하세요: 100
생성된 랜덤 숫자: 42
```

#### 랜덤 비밀번호 생성
```
메뉴를 선택하세요: 2
비밀번호 길이를 입력하세요 (기본값: 12): 16
생성된 비밀번호: aB3$kL9mN2pQ7rS
```

#### 동전 던지기
```
메뉴를 선택하세요: 3
결과: 앞면
```

## 프로젝트 구조

```
Linuxsubject/
├── README.md          # 프로젝트 문서
└── random_tool.sh     # 메인 스크립트 파일
```

## Git 브랜치 전략

이 프로젝트는 Git Flow 전략을 따릅니다.

### 브랜치 구조

- **main (master)**: 완성된 버전만 Merge, 직접 commit 금지
- **dev**: 통합 브랜치 (모든 기능 브랜치가 여기로 머지)
- **feature/***: 각 기능별 개발 브랜치
  - `feature/menu`: 메뉴 시스템
  - `feature/number`: 랜덤 숫자 생성
  - `feature/password`: 랜덤 비밀번호 생성
  - `feature/coin`: 동전 던지기
  - `feature/dice`: 주사위 굴리기
  - `feature/lotto`: 로또 번호 생성
  - `feature/readme`: README 문서

### 협업 규칙

1. 각 기능은 반드시 feature 브랜치를 생성하여 작업
2. 코드 완성 → PR 생성 → 팀원 리뷰 후 Merge
3. 의미 있는 커밋 메시지 사용
   - 예: `feat: add random number generator`
   - 예: `fix: resolve input validation issue`

### Pull Request 프로세스

1. feature 브랜치에서 기능 구현
2. 커밋 및 원격 저장소에 푸시
3. GitHub에서 Pull Request 생성
4. 팀원 코드 리뷰
5. dev 브랜치로 머지

### 주요 Git 명령어

```bash
# 브랜치 생성 및 전환
git checkout -b feature/new-feature

# 변경사항 커밋
git add .
git commit -m "feat: add new feature"

# 원격 저장소에 푸시
git push -u origin feature/new-feature

# dev 브랜치 최신화
git checkout dev
git pull origin dev
```

## 기술 스택

### Shell 스크립트 기능

- **변수 및 연산**: `$RANDOM`, `$(( ))` 산술 연산
- **입출력**: `echo`, `read`, `read -p`
- **제어 구조**: `if-else`, `for`, `while`, `case`
- **문자열 처리**: 정규표현식 매칭, 문자열 인덱싱
- **함수**: 함수 정의 및 호출
- **오류 처리**: 입력값 검증, 예외 처리

### 사용된 Shell 명령어

- `echo`: 출력
- `read`: 사용자 입력
- `read -p`: 프롬프트와 함께 입력
- `[[ ]]`: 조건문
- `$(( ))`: 산술 연산
- `${#변수}`: 문자열 길이
- `${문자열:시작:길이}`: 문자열 인덱싱

## 개발자

- **정철웅**: 기능 개발 + Git 관리
  - 랜덤 숫자 생성
  - 랜덤 비밀번호 생성
  - 동전 던지기
  - Git 브랜치 전략 수립
  - PR 리뷰 및 머지

- **정은호**: 기능 개발 + 테스트/문서화
  - 주사위 굴리기
  - 로또 번호 생성
  - Shell 명령어 조합 및 예외 처리
  - 기능 테스트 및 문서화

## 라이선스

이 프로젝트는 교육 목적으로 제작되었습니다.

## 기여하기

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

**마지막 업데이트**: 2025년 11월

