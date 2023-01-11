resource "aws_lightsail_lb" "lb" {
  name              = var.lb_name
  health_check_path = var.health_check_path
  instance_port     = var.instance_port
  #   tags = var.tags
}

resource "aws_lightsail_lb_attachment" "attach-lb" {
  lb_name       = aws_lightsail_lb.lb.name
  instance_name = aws_lightsail_instance.instance.name
}