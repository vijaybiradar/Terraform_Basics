resource "random_pet" "my-list" {
 prefix  = var.prefix[0]
}

#Print the first elment of list..

output "name"{
 value = var.prefix[0]
}

output "my-name"{
 value = random_pet.my-list.prefix
}
