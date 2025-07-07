resource "oci_identity_group" "group" {
  name           = var.group_name
  description    = "Terraform-created group"
  compartment_id = var.tenancy_ocid
}

resource "oci_identity_user_group_membership" "membership" {
  user_id  = oci_identity_user.user.id
  group_id = oci_identity_group.group.id
}

