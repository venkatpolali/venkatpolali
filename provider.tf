terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.67.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "6.2.0"
    }
    oci = {
      source  = "oracle/oci"
      version = "6.9.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.32.0"
    }
  }
}
