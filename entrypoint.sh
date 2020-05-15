#!/bin/sh

gcloud config set project "${PROJECT_ID}"

gcloud beta emulators firestore start --quiet --host-port=0.0.0.0:${PORT} $@
