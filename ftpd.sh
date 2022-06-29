#!/bin/bash


. venv/bin/activate

python -m pyftpdlib -p 21 -d /home/chaolm/nginx/

