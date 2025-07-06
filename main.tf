resource "oci_identity_compartment" "this" {
  name           = var.compartment_name
  description    = "Created via Terraform"
  compartment_id = var.tenancy_ocid
}

