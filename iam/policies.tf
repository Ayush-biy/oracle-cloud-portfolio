resource "oci_identity_policy" "policy" {
  name           = "${var.group_name}_policy"
  description    = "Policy for IAM group"
  compartment_id = var.tenancy_ocid
  statements     = [
    "Allow group ${var.group_name} to manage all-resources in tenancy"
  ]
}

