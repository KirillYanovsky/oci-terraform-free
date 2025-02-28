variable "name" {
  type    = string
  default = "k8s"
}

/*
Available flex shapes:
"VM.Optimized3.Flex"  # Intel Ice Lake
"VM.Standard3.Flex"   # Intel Ice Lake
"VM.Standard.A1.Flex" # Ampere Altra
"VM.Standard.E3.Flex" # AMD Rome
"VM.Standard.E4.Flex" # AMD Milan
*/

variable "shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}

variable "how_many_nodes" {
  type    = number
  default = 4
}

variable "availability_domain" {
  type    = number
  default = 0
}

variable "ocpus_per_node" {
  type    = number
  default = 1
}

variable "memory_in_gbs_per_node" {
  type    = number
  default = 6
}

# Default OCI provider
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaihidlz7gd25acu7dun62sttonwij363s3kkcndyycq63i4br4pra"
}

variable "region" {
  default = "il-jerusalem-1"
}

# For Object Storage Bucket
# variable "compartment_id" {}
# variable "bucket_name" {}
# variable "bucket_namespace" {}
