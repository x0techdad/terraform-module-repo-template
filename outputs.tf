output "string" {
  value = var.string
}

output "number" {
  value = var.number
}

output "boolean" {
  value = var.bool
}

output "string_list" {
  value = var.string_list
}

output "string_map" {
  value = var.string_map
}

output "string_map_list" {
  value = var.string_map_list
}

output "string_list_all" {
  value = concat( local.string_to_list, var.string_list, var.string_map_list )
}

output "string_map_all" {
  value = merge( var.string_map )
}

output "object" {
  value = var.object
}

output "object_list" {
  value = var.object_list
}

output "object_map" {
  value = var.object_map
}

output "object_map_list" {
  value = var.object_map_list
}

output "object_list_all" {
  value = concat( var.object_list, var.object_map_list )
}

output "object_map_all" {
  value = merge( var.object, var.object_map )
}