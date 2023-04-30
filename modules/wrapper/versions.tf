terraform {
  required_version = ">= 1.3"

  required_providers {
    provider = {
      source  = "hashicorp/provider"
      version = ">= 4.20"
    }
  }
}