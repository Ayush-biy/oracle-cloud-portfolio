variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

variable "compartment_ocid" {}
variable "availability_domain" {}
variable "subnet_id" {}
variable "hostname" {}
variable "image_id" {}
variable "ssh_public_key_path" {}
variable "instance_shape" {}
variable "kms_key_id"{
description = " ocid of the KMS key used to encrypt the boot volume"
type = string
}


