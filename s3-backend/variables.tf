variable "bucket_name" {
  type    = string
  default = "tf-state"
}

# Default OCI provider
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaihidlz7gd25acu7dun62sttonwij363s3kkcndyycq63i4br4pra"
}

variable "region" {
  default = "il-jerusalem-1"
}

variable "compartment_id" {
  default = "ocid1.tenancy.oc1..aaaaaaaaihidlz7gd25acu7dun62sttonwij363s3kkcndyycq63i4br4pra"
}

variable "bucket_namespace" {
  default = "axa8dcjvpysx"
}
