output "filename" {
  value = local_file.hello.filename
}

output "content" {
  value = local_file.hello.content
}

output "file_permission" {
  value = local_file.hello.file_permission
}
