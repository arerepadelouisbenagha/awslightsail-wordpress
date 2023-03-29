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
  type = number
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

variable "instance" {
  description = "Controls if instance should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "certificate" {
  description = "Controls if certificate should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "disk" {
  description = "Controls if disk should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "lb" {
  description = "Controls if Loadbalancer should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "disk_name" {
  type = string
}

variable "size_in_gb" {
  type = number
}

variable "disk_path" {
  type = string
}

variable "domain_entry_name" {
  type = string
}

variable "target_type" {
  type = string
}

variable "target" {
  type = string
}
