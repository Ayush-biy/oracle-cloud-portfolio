resource "oci_core_instance" "vm_instance" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = var.instance_shape

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
    hostname_label   = var.hostname
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
    }

  display_name = var.hostname
}

