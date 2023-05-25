output "file_paths" {
  value = local_file.file[*].filename
}

output "file_content" {
  value = local_file.file[0].content
}
