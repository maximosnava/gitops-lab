variable "file_name" {
  description = "Nombre del archivo a crear"
  type        = string
  default     = "salida-lab.txt"
}

variable "environment" {
  description = "Nombre del entorno"
  type        = string
  default     = "dev"
}

variable "message" {
  description = "Contenido del archivo"
  type        = string
  default     = "Hola, este archivo fue creado por Terraform."
}