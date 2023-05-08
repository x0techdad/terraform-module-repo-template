# Terraform module repo template

<!---
Use this section to provide a general overivew of the project to readers. Typically in a Terraform project, a description of the module and resources created is included.   
-->

> **Note:** this is sample document - replace the content below with your project details

This project defines a reference codebase structure, folder and file conventions and naming standards that can be used as boilerplate for Terraform Infrastructure as Code (IaC) projects. This complete standard structure is implemented:

    .
    ├── CONTRIBUTING.md               # Project contributing guidance
    ├── README.md                     # Project overview
    ├── LICENSE                       # Project license
    ├── data.tf                       # Root module data resources
    ├── main.tf                       # Root module
    ├── outputs.tf                    # Root module outputs
    ├── variables.tf                  # Root module variables
    ├── versions.tf                   # Root module version locks
    ├── ...                           # Additional files
    ├── .vscode                       # VSCode workspace config files
    ├── docs                          # Documentation
    ├── examples                      # Example use cases
    │   └── default                     # Defaults example
    │   │   └── main.tf                   # Example module
    │   ├── .../                        # Additional examples    
    ├── modules                       # Nested/built-in modules
    |   └── nested-module               # Nested module
    |   │   ├── README.md                 # Module readme
    |   │   ├── main.tf                   # Module
    |   │   ├── outputs.tf                # Module outputs
    |   │   └── variables.tf              # Module variables
    |   ├── .../                        # Additional nested modules 
    └── tests                         # Project tests
        └── tflint                      # TFLint config files


Terraform module [description and resources created by module]. 

## Available features

<!---
Use this section to provide a lists of features, capabilites, and sub/integraged modules
-->

* [Deployment] on [this provider] with [this capability]
* Seperate sub-modules or integrated module for [this resource] and/or [this service].

## Usage

<!---
Use this section to demo the common use case of the module, include a code snippet using the ```hcl``` block. Include alternate use cases, and distinct architecture options.
-->

This project supports [description of common use scenario and resources created by module].

```hcl
module "example_a" {
  source  = "/[module local path or registry url]/"

  var_a   = "example"
  var_b   = true

  tags            = {
    "managed_by"  = "terraform"
    "environment" = "production"
  }
}
```

### [Alternate use case]

```hcl
module "example_b" {
  source  = "/[module local path or registry url]/"

  var_a   = example_b
  var_b   = false
  var_c   = true
  var_d   = "dynamic_resource"

  tags            = {
    "managed_by"  = "terraform"
    "environment" = "production"
  }
}
```

## Examples

<!---
Use this section to demo known and tested module usage examples. 
-->

* [Wrapper `for_each`](./.examples/wrapper-for-each/)


## Contributing

<!---
Use this section to provide guidance and references to project contributors and developers.  
-->

Project overview, references and guides for contributors available [here](CONTRIBUTING.md).

Guides for code developers avaialble [here](docs/guide-development.md).