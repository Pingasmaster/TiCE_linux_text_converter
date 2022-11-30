#!/bin/bash
echo "Filename with extension"
read -p ">>> " name
wine convtext.exe $name
