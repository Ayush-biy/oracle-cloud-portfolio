
oci iam compartment create \
  --name "week1-training" \
  --description "Compartment for week 1 OCI training" \
  --compartment-id $(grep tenancy ~/.oci/config | awk -F'=' '{print $2}' | xargs)
--// command for compartment creation--//



oci iam compartment create \
  --name "week1-training" \
  --description "Compartment for week 1 OCI training" \
  --compartment-id <your-tenancy-ocid>



oci iam group create \
  --name "training-group" \
  --description "Group for OCI Week 1 training"

--//command for group creation--//


Allow group training-group to manage all-resources in compartment week1-training


