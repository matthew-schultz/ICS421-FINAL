INSTANCE_NAME=$1

gcloud compute instances delete $INSTANCE_NAME --quiet
