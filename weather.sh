#! /bin/bash

wget -P data/weather/`date +%Y%m%d_%H%M%S.json` https://prodapi.metweb.ie/observations/athenry/today