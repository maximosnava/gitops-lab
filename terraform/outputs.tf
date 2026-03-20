output "generated_file" {
  description = "Ruta del archivo generado"
  value       = local_file.lab_file.filename
}

output "generated_content_sha1" {
  description = "Hash del contenido"
  value       = local_file.lab_file.content_sha1
}