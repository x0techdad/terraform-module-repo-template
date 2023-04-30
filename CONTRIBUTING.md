# Contributing guide

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

Thank you for your interest in contributing to the Project! If you have questions please reach out for help. You can open a draft pull request (PR) or an issue and we'll do our best to guide you in the right direction.

When contributing to this project please follow guidance to help speed up testing and acceptance of your changes. This contribution guide assumes you have at least a basic understanding of tools, frameworks and languages used. Thank you for your support and contributions, happy engineering!


## Basics

* [Codebase structure]()
* Opening a PR
* Creating an Issue

## Engineering guidance and best practices

* [Markdown](https://www.markdownguide.org/basic-syntax)
* [Terraform](https://github.com/x0techdad/cloud-platform-starter-kit/blob/main/docs/guide-terraform.md)


## Codebase structure

Please align to the complete standard structure for Terraform:
 structure is implemented:

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


