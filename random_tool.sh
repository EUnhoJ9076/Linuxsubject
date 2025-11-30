#!/bin/bash

roll_dice() {
    echo "주사위: $((RANDOM % 6 + 1))"
}