# main.tf
# This Terraform configuration creates random names using the random_string resource and outputs values from a list variable.

# Create a random_string resource for each prefix in the list.
resource "random_string" "my-list" {
  count       = length(var.prefix)
  length      = 8  # You can adjust the length as needed.
  special     = false
  upper       = false
  number      = false
  min_lower   = 3
  min_special = 0
  min_number  = 0
  override    = {
    special = "false"
    upper   = "false"
    number  = "false"
  }
}

# Output the generated names for each prefix.
output "names" {
  value = random_string.my-list[*].result
}


