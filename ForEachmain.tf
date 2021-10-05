resource "local_file" "hello" {
 filename = each.value
 for_each = var.filename
}
