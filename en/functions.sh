#!/usr/bin/env bash

jv_pg_gm_lang()
{
  case "$1" in
    say_traffic) echo "The route for $2 to $3 via $4 is $5 including $6 minutes late.";;
    invalid_api_key) jv_error "Invalid Google Map API key.";;
    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
