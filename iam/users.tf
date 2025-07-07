resource "oci_identity_user" "user" {
  name           = var.user_name
  description    = "Terraform-created user"
  compartment_id = var.tenancy_ocid
}

