# Define a local file resource that creates a file called "Hello.txt"

resource "local_file" "hello" {
  filename = "Hello.txt"
  content = "Hello Vijay Biradar"
  file_permission = "0700"
}

# Define a data source that reads a file called "Hi.txt"
data "local_file" "hi" {
  filename = "Hi.txt"
}
