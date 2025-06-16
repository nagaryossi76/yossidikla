#!/bin/bash

DESKTOP_DIR="$HOME/Desktop/BACKUP"

if [ ! -d "$DESKTOP_DIR" ]; then
    echo "יוצר תיקיית גיבוי ב-$DESKTOP_DIR..."
    mkdir -p "$DESKTOP_DIR"
fi
