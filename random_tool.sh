#!/bin/bash

# ===== 메뉴 출력 =====
show_menu() {
  echo "==============================="
  echo "   Simple Random Tool"
  echo "==============================="
  echo "1) 랜덤 숫자 생성"
  echo "2) 랜덤 비밀번호 생성"
  echo "3) 동전 던지기 (앞/뒤)"
  echo "4) 주사위 굴리기 (1~6)"
  echo "5) 로또 번호 생성 (1~45, 6개)"
  echo "0) 종료"
  echo "==============================="
}

# ===== 기능 함수 (초기엔 TODO) =====
random_number() {
  echo
  read -p "최소값을 입력하세요: " min
  read -p "최대값을 입력하세요: " max
  
  # 입력값 검증
  if ! [[ "$min" =~ ^[0-9]+$ ]] || ! [[ "$max" =~ ^[0-9]+$ ]]; then
    echo "오류: 숫자만 입력 가능합니다."
    return
  fi
  
  if [ "$min" -gt "$max" ]; then
    echo "오류: 최소값이 최대값보다 클 수 없습니다."
    return
  fi
  
  # 랜덤 숫자 생성
  random=$((RANDOM % (max - min + 1) + min))
  echo "생성된 랜덤 숫자: $random"
}

random_password() {
  echo
  read -p "비밀번호 길이를 입력하세요 (기본값: 12): " length
  
  # 기본값 설정
  if [ -z "$length" ]; then
    length=12
  fi
  
  # 입력값 검증
  if ! [[ "$length" =~ ^[0-9]+$ ]] || [ "$length" -le 0 ]; then
    echo "오류: 양의 정수만 입력 가능합니다."
    return
  fi
  
  # 문자 세트 정의
  chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
  
  # 랜덤 비밀번호 생성
  password=""
  for ((i=0; i<length; i++)); do
    random_index=$((RANDOM % ${#chars}))
    password="${password}${chars:$random_index:1}"
  done
  
  echo "생성된 비밀번호: $password"
}

coin_toss() {
  echo
  # 0 또는 1 랜덤 생성
  result=$((RANDOM % 2))
  
  if [ "$result" -eq 0 ]; then
    echo "결과: 앞면"
  else
    echo "결과: 뒷면"
  fi
}

roll_dice() {
    echo "주사위: $((RANDOM % 6 + 1))"
}

lotto_number() {
  echo "[TODO] 로또 번호 생성 기능은 다음 브랜치에서 구현 예정입니다."
}

# ===== 메인 루프 =====
while true; do
  show_menu
  read -p "메뉴를 선택하세요: " choice

  case "$choice" in
    1) random_number ;;
    2) random_password ;;
    3) coin_toss ;;
    4) dice_roll ;;
    5) lotto_number ;;
    0) echo "프로그램을 종료합니다."; exit 0 ;;
    *) echo "잘못된 입력입니다. 0~5 중에서 선택하세요." ;;
  esac
  echo
done
