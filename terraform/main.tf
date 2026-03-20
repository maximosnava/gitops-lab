terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "lab_file" {
  filename = "${path.module}/${var.file_name}"
  content  = <<-EOT
  ${var.message}
  Entorno: ${var.environment}
  EOT
}

output "archivo_generado" {
  value = local_file.lab_file.filename
}

output "contenido_sha1" {
  value = local_file.lab_file.content_sha1
}