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
  echo "[TODO] 랜덤 숫자 생성 기능은 다음 브랜치에서 구현 예정입니다."
}

random_password() {
  echo "[TODO] 랜덤 비밀번호 생성 기능은 다음 브랜치에서 구현 예정입니다."
}

coin_toss() {
  echo "[TODO] 동전 던지기 기능은 다음 브랜치에서 구현 예정입니다."
}

dice_roll() {
  echo "[TODO] 주사위 굴리기 기능은 다음 브랜치에서 구현 예정입니다."
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