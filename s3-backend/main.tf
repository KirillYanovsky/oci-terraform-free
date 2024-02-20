data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.compartment_id
}
locals {
  namespace       = data.oci_objectstorage_namespace.ns.namespace
  bucket_endpoint = "https://${oci_objectstorage_bucket.tf_bucket.namespace}.compat.objectstorage.il-jerusalem-1.oraclecloud.com"
}
resource "oci_objectstorage_bucket" "tf_bucket" {
  #Required
  compartment_id = var.compartment_id
  name           = var.bucket_name
  namespace      = local.namespace
  freeform_tags  = { "Project" = "https://github.com/KirillYanovsky/oci-terraform-free" }
}

output "bucket_endpoint" {
  value = "{ s3 = ${local.bucket_endpoint} }"
}

output "backet_name" {
  value = var.bucket_name
}
