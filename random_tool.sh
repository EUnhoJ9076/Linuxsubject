#!/bin/bash

lotto() {
    echo "로또 번호(1~45):"
    for i in {1..6}; do
        echo -n "$((RANDOM % 45 + 1))"
    done
    echo 
}