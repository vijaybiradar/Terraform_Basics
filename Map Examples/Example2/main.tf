resource "local_file" "hello" {
 filename = "Hello.txt"
 content  = var.file-content["statement2"]
