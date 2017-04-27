#!/usr/bin/env bash

jv_pg_gm_lang()
{
  case "$1" in
    say_traffic) echo "Le trajet entre $2 et $3 via $4 est estimé à $5 dont $6 minutes de retard.";;
    invalid_api_key) jv_error "Clef API Google Map invalide.";;
    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
