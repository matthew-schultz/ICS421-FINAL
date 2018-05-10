# !/bin/bash
#echo 'hiya'
#example run command
#sudo curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/create_gcc_instance.sh | bash -s instance-1

INSTANCE_NAME=$1

#create a debian 9 VM with 20GB storage
# gcloud compute --project=ics-421-final instances create instance-1 --zone=us-west1-a --machine-type=n1-standard-1 --subnet=default --maintenance-policy=MIGRATE --service-account=284864085858-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --min-cpu-platform=Automatic --image=debian-9-stretch-v20180509 --image-project=debian-cloud --boot-disk-size=20GB --boot-disk-type=pd-standard --boot-disk-device-name=instance-1
# gcloud compute --project=ics-421-final instances create instance-1 \ 
# --zone=us-west1-a --machine-type=n1-standard-1 --subnet=default \
# --maintenance-policy=MIGRATE \
# --service-account=284864085858-compute@developer.gserviceaccount.com \
# --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
# --min-cpu-platform=Automatic --image=debian-9-stretch-v20180509 \
# --image-project=debian-cloud --boot-disk-size=20GB --boot-disk-type=pd-standard \
# --boot-disk-device-name=instance-1

gcloud compute --project=ics-421-final instances create $INSTANCE_NAME \
--zone=us-west1-a --machine-type=n1-standard-1 --subnet=default \
--maintenance-policy=MIGRATE \
--service-account=284864085858-compute@developer.gserviceaccount.com \
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
--min-cpu-platform=Automatic --image=debian-9-stretch-v20180509 \
--image-project=debian-cloud --boot-disk-size=20GB --boot-disk-type=pd-standard \
--boot-disk-device-name=$INSTANCE_NAME
