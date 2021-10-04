resource "local_file" "hello" {
 filename = "/c/Users/ag59900/Terraform_Test/hello.txt"
 content  = var.file-content["statement2"]
}
