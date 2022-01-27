#!/bin/bash

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../src"

# core db
export FLASK_APP=main.py
echo "starting flask"
flask db upgrade
