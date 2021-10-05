variable "filename" {
  type = set(string)
  default = [
    "/c/Users/ag59900/Terraform_Test/hello1.txt",
    "/c/Users/ag59900/Terraform_Test/hello2.txt",
    "/c/Users/ag59900/Terraform_Test/hello3.txt",
  ]
}
