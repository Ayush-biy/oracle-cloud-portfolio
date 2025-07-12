terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.0.0"
    }
  }

  required_version = ">= 1.0"
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
resource "oci_identity_policy" "kms_compute_policy" {
  name           = "AllowComputeKMS"
  description    = "Allow compute to use KMS key"
  compartment_id = var.compartment_ocid
  statements = [
    "Allow service compute to use keys in compartment certification"
  ]
}


