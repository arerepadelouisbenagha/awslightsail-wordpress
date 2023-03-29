resource "aws_lightsail_lb" "lb" {
  count = var.lb ? 1 : 0

  name              = var.lb_name
  health_check_path = var.health_check_path
  instance_port     = var.instance_port
}

resource "aws_lightsail_lb_attachment" "attach" {
  count         = var.lb ? 1 : 0
  lb_name       = element(aws_lightsail_lb.lb.*.name, count.index)
  instance_name = element(aws_lightsail_instance.instance.*.name, count.index)
}

resource "aws_lightsail_lb_https_redirection_policy" "redirect" {
  count   = var.lb ? 1 : 0
  lb_name = element(aws_lightsail_lb.lb.*.name, count.index)
  enabled = true
}

resource "aws_lightsail_lb_certificate_attachment" "certificate" {
  count            = var.lb ? 1 : 0
  lb_name          = element(aws_lightsail_lb.lb.*.name, count.index)
  certificate_name = element(aws_lightsail_lb_certificate.certificate.*.name, count.index)
}