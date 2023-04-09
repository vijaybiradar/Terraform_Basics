variable "file_contents" {
  type = map(list(string))
  default = {
    "file1" = ["This is the contents of file1.", "This is another line in file1."],
    "file2" = ["This is the contents of file2."],
    "file3" = ["This is the contents of file3.", "This is another line in file3.", "This is yet another line in file3."]
  }
}
