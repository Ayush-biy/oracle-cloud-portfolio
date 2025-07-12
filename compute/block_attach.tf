resource "oci_core_volume_attachment" "attach_block" {
  attachment_type = "paravirtualized"
  instance_id     = oci_core_instance.vm_instance.id
  volume_id       = oci_core_volume.my_block_volume.id
  device          = "/dev/oracleoci/oraclevdb"
}

