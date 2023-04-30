# [Provider] [Service Description] Terraform module repo

This project defines a reference codebase structure, folder and file conventions and naming standards that can be used as boilerplate for Terraform Infrastructure as Code (IaC) in software projects.

> **Note:** this is sample documentation - replace it with a brief description of your project or intended use of the code in this repository. 

Terrafor module [description of capabilities and resources created by module]. 

---

## Available features

> **Note:** In this section provide a list of features your IaC modules/templates deliver.

* [Resource pattern] on [this provider] with [this added capability]
* Seperate sub-modules or integrated module for [this resource] and/or [this service].

## Usage

> **Note:** In this section provide an example on how to instatiate the IaC module, include a code snippet using the ```hcl``` block. Callout alternate usage scenarios, distinct architecture options, and available optional capabilites.

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

## Wrappers

> **Note:** In this section list known and tested methods of wrapping your module in a seperate process, module, or function.

### Foreach

When using this module you can create multiple similar resources wiht unique ids by using the [`for_each` Terraform meta-argument](https://developer.hashicorp.com/terraform/tutorials/configuration-language/for-each). 

```hcl
module "example_b" {
  source  = "/[module local path or registry url]/"

  foreach = { for obj in var.objects: 
            obj.name => obj
            if obj.name != null }
...
```

### Module

You can achieve similar results in scenarios where you cannot use `for_each` by instantiating the [wrapper module](./modules/wrapper).  


## Development and contributing

Check out the [development guide](docs/guide-development.md) file for an overview on how to develop the project.  

Project overview, references and guides geared towards code contributors is available [here](CONTRIBUTING.md).