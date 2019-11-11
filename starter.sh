#!/usr/bin/env bash
export TF_LOG=DEBUG
echo '0. initiate terraform'
terraform init
echo '1. executing terraform fmt'
terraform fmt

echo '2. executing terraform plan -var-file="starter.tfvars" '
terraform plan -var-file="starter.tfvars"

if [ $? -eq 0 ]
then
  echo "Successfully validated terraform infrastructure "
  echo '3. gonna make the magic'
  echo "yes" | terraform apply -var-file="starter.tfvars"
else
  echo "oops" >&2
fi
