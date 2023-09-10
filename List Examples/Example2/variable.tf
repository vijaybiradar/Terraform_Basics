# variable.tf
# Define the prefix variable as a list of strings with a default value.
variable "prefix" {
  type    = list(string)
  default = ["CAT", "DOG", "MONKEY", "SQUIRREL", "ELEPHANT"]
}
