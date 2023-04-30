# Enables AzureRM Rulset
plugin "azurerm" {
  enabled = true
  version = "0.22.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

#Enables module inspection
config {
  module = true
  force = false
}

# Disallow deprecated (0.11-style) interpolation
rule "terraform_deprecated_interpolation" {
  enabled = true
}
 
# Disallow legacy dot index syntax.
rule "terraform_deprecated_index" {
  enabled = true
}
 
# Disallow variables, data sources, and locals that are declared but never used.
rule "terraform_unused_declarations" {
  enabled = true
}

# Disallow output declarations without description.
rule "terraform_documented_outputs" {
  enabled = true
}
 
# Disallow variable declarations without description.
rule "terraform_documented_variables" {
  enabled = true
}
 
# Disallow variable declarations without type.
rule "terraform_typed_variables" {
  enabled = true
}

# Disallow specifying a git or mercurial repository as a module source without pinning to a version.
rule "terraform_module_pinned_source" {
  enabled = true
}

# Enforces naming conventions
rule "terraform_naming_convention" {
  enabled = true
 
  #Require specific naming structure
  variable {
    format = "snake_case"
  }
  
  locals {
    format = "snake_case"
  }
  
  output {
    format = "snake_case"
  }

  resource {
    format = "snake_case"
  }
  
  module {
    format = "snake_case"
  }
  
  data {
    format = "snake_case"
  }
}

# Require that all providers have version constraints through required_providers.
rule "terraform_required_providers" {
  enabled = true
}

# Disallow terraform declarations without require_version.
rule "terraform_required_version" {
  enabled = true
}
 
# Ensure that a module complies with the Terraform Standard Module Structure
rule "terraform_standard_module_structure" {
  enabled = true
}