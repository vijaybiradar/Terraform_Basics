resource "local_file" "hello" {
 filename = "Name.txt"
 content =  "Vijay Biradar"
 file_permission = "0700"
}