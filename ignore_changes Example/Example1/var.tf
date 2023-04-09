variable "filename" {
  type    = string
  default = "Hello.txt"
}

variable "content" {
  type    = string
  default = "Hello, world!"
}

variable "file_permission" {
  type    = string
  default = "0700"
}
