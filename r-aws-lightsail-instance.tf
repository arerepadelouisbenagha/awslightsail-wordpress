resource "aws_lightsail_instance" "instance" {
  name              = var.light_sail_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_import_name
  #   tags              = var.tags
}

resource "aws_lightsail_key_pair" "key" {
  name       = var.key_import_name
  public_key = var.public_key
}