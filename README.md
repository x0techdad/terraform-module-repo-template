# [Provider] [Service Description] Terraform module repo

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

> **Note:** this is sample documentation - replace the content below with your project details. 

Terraform module [description of capabilities and resources created by module]. 

## Available features

> **Note:** in this section provide a list of features your IaC modules/templates deliver.

* [Resource pattern] on [this provider] with [this added capability]
* Seperate sub-modules or integrated module for [this resource] and/or [this service].

## Usage

> **Note:** in this section show the common use case of this IaC module, include a code snippet using the ```hcl``` block. Callout alternate use cases, and distinct architecture options.

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

> **Note:** in this section list known and tested module usage examples

* [Wrapper `for_each`](./.examples/wrapper-for-each/)
* [Wrapper module](./modules/wrapper/.examples/default/)


## Contributing
Project overview, references and guides for code contributors available [here](CONTRIBUTING.md).

Guidance on how to develop this project can be found [here](docs/guide-development.md).