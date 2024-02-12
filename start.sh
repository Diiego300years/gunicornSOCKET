#!/bin/bash

# Aktywuj środowisko Conda
echo "Aktywowanie środowiska Conda..."
#exec conda list

# Uruchom Gunicorn z użyciem GeventWebSocketWorker
echo "Uruchamianie Gunicorn..."
exec gunicorn -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker -w 1 app.wsgi:application --bind 0.0.0.0:5001