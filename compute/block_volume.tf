resource "oci_core_volume" "my_block_volume" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  display_name        = "MyBlockVolume"
  size_in_gbs         = 50

  kms_key_id          = var.kms_key_id  # Same KMS Key used earlier
}

