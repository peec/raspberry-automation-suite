#!/bin/bash

MY_PATH="`dirname \"$0\"`"
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"

if [ -z "$MY_PATH" ] ; then
  # error; for some reason, the path is not accessible
  # to the script (e.g. permissions re-evaled after suid)
  echo "Error, could not find path of script."
  exit 1  # fail
fi

source "$MY_PATH/config.cfg"

FORECAST_API_KEY="$phpauto_forecast_apikey" cd "$MY_PATH/app" &&  php app/console.php ai:run

