terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.29.0"
    }
  }

  backend "s3" {
    bucket                      = "tf-state"
    region                      = "il-jerusalem-1"
    key                         = "tf.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    use_path_style              = true
    #insecure = true
    #    skip_metadata_api_check = true
    shared_credentials_files = ["./tf_s3_bucket_creds"]
    endpoints                = { s3 = "https://axz19y2vw071.compat.objectstorage.il-jerusalem-1.oraclecloud.com" }
    #endpoints                = { s3 = "https://axa8dcjvpysx.compat.objectstorage.il-jerusalem-1.oraclecloud.com" }
    skip_s3_checksum = true
  }
}

provider "oci" {
  tenancy_ocid        = var.tenancy_ocid
  config_file_profile = "kiryanovsky" #"DEFAULT"
}
