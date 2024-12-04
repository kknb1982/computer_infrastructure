#! /bin/bash

wget -q -O data/weather/`date +"%Y%m%d_%H%M_athenry.json"` "https://prodapi.metweb.ie/observations/athenry/today"
echo "Weather data downloaded"