variable "file_contents" {
  type    = list(string)
  default = ["This is line one.", "This is line two.", "This is line three."]
}

locals {
  file_names = ["file_one.txt", "file_two.txt", "file_three.txt"]
}

resource "local_file" "example_files" {
  for_each = { for i, name in local.file_names : i => name }

  filename = "${path.module}/${each.value}"
  content  = var.file_contents[each.key]
}
