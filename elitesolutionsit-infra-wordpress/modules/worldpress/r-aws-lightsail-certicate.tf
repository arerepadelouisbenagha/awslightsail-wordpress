resource "aws_lightsail_certificate" "certificate" {
  name                      = var.certificate_name
  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
}