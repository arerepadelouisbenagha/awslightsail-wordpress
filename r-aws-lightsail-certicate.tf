resource "aws_lightsail_lb_certificate" "certificate" {
  count                     = var.certificate ? 1 : 0
  name                      = var.certificate_name
  lb_name                   = element(aws_lightsail_lb.lb.*.id, count.index)
  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
}