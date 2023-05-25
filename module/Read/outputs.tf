output "output_with_prefix" {
  description = "Output from the 'files' module with a prefix"
  value       = "${var.prefix} ${module.files.file_content}"
}
