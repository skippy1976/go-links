#!/bin/bash

source server/scripts/load_secrets.sh

export FLASK_APP=main.py
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../src"

sh ../scripts/upgrade_db.sh

gunicorn main:app -b 0.0.0.0:${PORT:-8000} -w 4
