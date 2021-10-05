resource "local_file" "hello" {
  filename = "/c/Users/ag59900/Terraform_Test/hello.txt"
  content = "Hello Vijay Biradar"
  file_permission = "0700"
}
