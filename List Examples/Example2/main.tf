resource "random_pet" "my_list" {
  prefix = var.prefix[2]
}

# Output the prefix variable and the prefix generated by random_pet
output "prefix" {
  value = var.prefix[2]
}

output "my_name" {
  value = random_pet.my_list.id
}
