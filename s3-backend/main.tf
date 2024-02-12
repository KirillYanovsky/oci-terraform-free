resource "oci_objectstorage_bucket" "tf_bucket" {
  #Required
  compartment_id = var.compartment_id
  name           = var.bucket_name
  namespace      = var.bucket_namespace
}

locals {
  bucket_endpoint = "https://${oci_objectstorage_bucket.tf_bucket.namespace}.compat.objectstorage.il-jerusalem-1.oraclecloud.com"
}

output "bucket_endpoint" {
  value = "{ s3 = ${local.bucket_endpoint} }"
}
