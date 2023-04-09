resource "local_file" "hello" {
  filename        = var.filename
  content         = var.content
  file_permission = var.file_permission

  lifecycle {
    ignore_changes = [
      file_permission
    ]
  }
}
