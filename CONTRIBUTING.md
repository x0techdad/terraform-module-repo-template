# Contributing guide

<!---
Use this section to provide a general statement to contributors. 
-->

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

Thank you for your interest in contributing to the Project! If you have questions or need help, please open a draft pull request (PR) or an issue and we'll do our best to guide you in the right direction.

When contributing to this project please follow guidance to help speed up testing and acceptance of your changes. This guide assumes you have at least a basic understanding of tools, frameworks and languages used in this project. 

Thank you for your support and contributions, happy engineering!


## Basics

<!---
Use this section to generate a list of general, basic contributing guidance. 
-->

* [Codebase structure](#codebase-structure)
* Opening a PR
* Creating an Issue

## Engineering guidance and best practices

<!---
Use this section to generate a list of technology or domain specific guidance, standards, or best practices. 
-->


* [Markdown coding](/docs/guide-markdown.md)
* [Terraform coding](/docs/guide-terraform.md)
* Add a new platform component
* Add a new infrastructure module
* Add a new infrastructure resource
* Add a new infrastructure live deployment


## Codebase structure

<!---
Use this section to generate a visual of the standard project codebase structure. 
Update this visual when new folders or files are commited to branch. 
-->

Please align to the below standard structure defined.

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


