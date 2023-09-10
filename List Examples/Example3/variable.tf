# variable.tf
# Define the age variable as a list of strings with a default value.
variable "age" {
  type    = list(string)
  default = ["20", "21", "22"]
}
