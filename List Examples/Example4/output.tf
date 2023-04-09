output "file_locations" {
  value = { for name, file in local_file.example_files : name => file.filename }
}
