#!/usr/bin/env bash

# Say time and delay to go from $1 to $2
# $1 (string): From
# $2 (string): To
jv_pg_gm_check_traffic()
{
  if [[ -n "$var_jv_pg_gm_api_key" ]]; then
    local json=$(curl -s -G "https://maps.googleapis.com/maps/api/directions/json" --data "language=fr" --data-urlencode "origin=$1" --data-urlencode "destination=$2" --data "traffic_model=best_guess" --data "departure_time=now" --data-urlencode "key=$var_jv_pg_gm_api_key")
    local duration=$(echo "$json" | jq -r '.routes[0].legs[0].duration.value')
    local duration_in_traffic=$(echo "$json" | jq -r '.routes[0].legs[0].duration_in_traffic.value')
    local duration_in_traffic_text=$(echo "$json" | jq -r '.routes[0].legs[0].duration_in_traffic.text')
    local summary=$(echo "$json" | jq -r '.routes[0].summary')
    local delay=$((($duration_in_traffic-$duration)/60))

    say "$(jv_pg_gm_lang say_traffic \"$1\" \"$2\" \"$summary\" \"$duration_in_traffic_text\" \"$delay\")"
  else
    say "$(jv_pg_gm_lang invalid_api_key)"
  fi
}
