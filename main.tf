locals {
  string_to_list = formatlist(var.string)
}

resource "null_resource" "this" {
  
}