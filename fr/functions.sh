#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# jv_pg_XX_myfunction () { }
# jv for JarVis
# pg for PluGin
# XX can be a two letters code for your plugin, ex: ww for Weather Wunderground
jv_pg_gm_check_traffic() {
local json=$(curl -s "https://maps.googleapis.com/maps/api/directions/json?language=fr&origin=$FROM&destination=$TO&traffic_model=best_guess&departure_time=now&key=$APIKEY")
local duration=$(echo "$json" | jq -r '.routes[0].legs[0].duration.value')
local duration_in_traffic=$(echo "$json" | jq -r '.routes[0].legs[0].duration_in_traffic.value')
local duration_in_traffic_text=$(echo "$json" | jq -r '.routes[0].legs[0].duration_in_traffic.text')
local summary=$(echo "$json" | jq -r '.routes[0].summary')
local difference=$((($duration_in_traffic-$duration)/60))
echo "Le meilleur trajet via $summary est estimé à $duration_in_traffic_text dont $difference minutes de retard"
}

