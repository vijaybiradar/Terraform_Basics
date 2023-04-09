resource "local_file" "hello" {
  filename = "Hello.txt"
  content  = "Hello, ${var.name}!"
}

output "hello_message" {
  value = local_file.hello.content
}
