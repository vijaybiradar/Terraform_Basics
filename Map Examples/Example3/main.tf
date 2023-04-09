variable "file_contents" {
  type = map(list(string))
  default = {
    "file1" = ["This is the contents of file1.", "This is another line in file1."],
    "file2" = ["This is the contents of file2."],
    "file3" = ["This is the contents of file3.", "This is another line in file3.", "This is yet another line in file3."]
  }
}

locals {
  file_names = keys(var.file_contents)
}

resource "local_file" "example_files" {
  for_each = { for name in local.file_names : name => var.file_contents[name] }

  filename = "${path.module}/${each.key}.txt"
  content  = join("\n", each.value)
}
