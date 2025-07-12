resource "oci_objectstorage_bucket" "my_bucket" {
  compartment_id        = var.compartment_ocid
  name                  = "kms-encrypted-bucket"
  namespace             = var.namespace
  storage_tier          = "Standard"
  object_events_enabled = false
}

