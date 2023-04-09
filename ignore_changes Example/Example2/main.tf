resource "local_file" "hello" {
  filename = "Hello.txt"
  content = "Hello Vijay Biradar"
  file_permission = "0700"
  
 lifecycle {
   ignore_changes = all
      
}
}


or

resource "local_file" "hello" {
  filename        = "Hello.txt"
  content         = "Hello Vijay Biradar"
  file_permission = "0700"
  
  lifecycle {
    ignore_changes = [
      content,
      file_permission,
    ]
  }
}
