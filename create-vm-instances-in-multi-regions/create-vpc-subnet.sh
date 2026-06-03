#!/bin/bash
set -e
source ./main.env

gcloud compute networks create $vpcName \
  --subnet-mode=auto \
  --project=$projectName
