#!/bin/sh
set -eu
for VALUES_FILE in values-*.yaml; do
  BASENAME=${VALUES_FILE%.yaml}
  RELEASE=${BASENAME#values-}
  helm upgrade --install $RELEASE ./generic --reset-values --values $VALUES_FILE
done
