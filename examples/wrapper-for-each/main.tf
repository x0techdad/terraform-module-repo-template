# To create multiple instances of resources in a single deployment, wrap the root module with Terraform's for_each meta-argument:

module "for_each" {
  source = "../.."

  for_each = var.string_map


}