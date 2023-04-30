terraform {
  # Terraform core version locked
  required_version = ">= 1.3"

  required_providers {
    # Map of required providers, version locked
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2"
    }
  }
}