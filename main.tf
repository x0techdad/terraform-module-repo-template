locals {
  string_to_list = formatlist(var.string)
}

resource "null_resource" "this" {
  # Changes to any resource instance requires re-provisioning

  triggers              = {
    resource_attribute  = var.string
  }

}