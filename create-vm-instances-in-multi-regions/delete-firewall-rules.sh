#!/bin/bash
source ./main.env

for targets in $(gcloud compute firewall-rules list \
  --project=$projectName \
  --filter NETWORK=$vpcName \
  --format "get(name)")
do
  gcloud compute firewall-rules delete $targets \
    --project=$projectName
done
