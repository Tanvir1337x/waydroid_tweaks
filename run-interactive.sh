#!/bin/sh

python3 -m venv venv
venv/bin/pip install -r requirements.txt
sudo venv/bin/python3 main.py
