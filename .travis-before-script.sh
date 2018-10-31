#!/bin/bash

set -e $DRUPAL_TI_DEBUG

# Ensure the right Drupal version is installed.
# Note: This function is re-entrant.
drupal_ti_ensure_drupal

# Turn on chromedriver for functional Javascript tests
chromedriver --whitelisted-ips --log-path=/tmp/chromedriver.log --verbose &
