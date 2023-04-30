# Wrapper `for_each`

When using this module you can create multiple similar resources with unique ids by using the [`for_each` Terraform meta-argument](https://developer.hashicorp.com/terraform/tutorials/configuration-language/for-each). 

```hcl
module "example" {
  source  = "/[module local path or registry url]/"

  foreach = { for obj in var.objects: 
            obj.name => obj
            if obj.name != null }
...
```