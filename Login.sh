gcloud iam service-accounts create terraform \
  --display-name "Terraform admin account"

gcloud projects add-iam-policy-binding GOOGLE_CLOUD_PROJECT \
 --member serviceAccount:terraform@GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
 --role roles/owner

gcloud iam service-accounts keys create login.json \
 --iam-account terraform@GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com