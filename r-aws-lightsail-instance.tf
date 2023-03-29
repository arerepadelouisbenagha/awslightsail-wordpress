resource "aws_lightsail_instance" "instance" {
  count = var.instance ? 1 : 0

  name              = var.light_sail_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_import_name
}

resource "aws_lightsail_key_pair" "key" {
  name       = var.key_import_name
  public_key = var.public_key
}

resource "aws_lightsail_disk" "disk" {
  name              = var.disk_name
  size_in_gb        = var.size_in_gb
  availability_zone = var.availability_zone
}

resource "aws_lightsail_disk_attachment" "disk" {
  count         = var.instance ? 1 : 0
  disk_name     = aws_lightsail_disk.disk.name
  instance_name = element(aws_lightsail_instance.instance.*.name, count.index)
  disk_path     = var.disk_path
}

