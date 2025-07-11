resource "oci_kms_vault" "default_vault" {
  compartment_id = var.compartment_ocid
  display_name   = "boot-volume-vault"
  vault_type     = "DEFAULT"
}

resource "oci_kms_key" "boot_key" {
  compartment_id = var.compartment_ocid
  display_name   = "boot-volume-key"
  management_endpoint = oci_kms_vault.default_vault.management_endpoint
  protection_mode = "SOFTWARE"
  key_shape {
    algorithm = "AES"
    length    = 32
  }
}

