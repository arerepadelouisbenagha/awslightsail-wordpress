resource "aws_lightsail_domain" "domain" {
  domain_name = var.domain_name
}

resource "aws_lightsail_domain_entry" "domain" {
  domain_name = aws_lightsail_domain.domain.domain_name
  name        = var.domain_entry_name
  type        = var.target_type
  target      = var.target
}