#!/bin/bash

MY_PATH="`dirname \"$0\"`"
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"

source "$MY_PATH/config.cfg"

echo "Using forecast apikey: $phpauto_forecast_apikey"

cd "$MY_PATH/app" && FORECAST_API_KEY="$phpauto_forecast_apikey" DB_dsn="mysql:host=10.0.0.5;dbname=speechdaemon" DB_username="speechdaemon" DB_password="speechdaemon" php app/console.php ai:run

