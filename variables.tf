variable "availability_zone" {
  type = string
}

variable "blueprint_id" {
  type = string
}

variable "bundle_id" {
  type = string
}

variable "key_import_name" {
  type = string
}

variable "public_key" {
  type = string
}

variable "light_sail_name" {
  type = string
}

variable "lb_name" {
  type = string
}

variable "health_check_path" {
  type = string
}

variable "instance_port" {
  type = string
}

variable "certificate_name" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "subject_alternative_names" {
  type = list(string)
}