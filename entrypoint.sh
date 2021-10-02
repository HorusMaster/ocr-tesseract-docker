#!/bin/bash

gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
# RUN_PORT=${PORT:-8000}

# /usr/local/bin/gunicorn --worker-tmp-dir /dev/shm -k uvicorn.workers.UvicornWorker app:app --bind "0.0.0.0:${RUN_PORT}"