#!/bin/bash

# Aktywuj środowisko Conda
echo "Aktywowanie środowiska Conda..."

# Uruchom Gunicorn z użyciem GeventWebSocketWorker
echo "Uruchamianie Gunicorn..."
exec gunicorn -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker -w 1 app:app --bind 0.0.0.0:5001
