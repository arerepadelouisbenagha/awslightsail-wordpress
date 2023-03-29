module "lightsail" {
  source = "git::https://github.com/arerepadelouisbenagha/wordpress.git?ref=v1.1.0"

  light_sail_name           = "bootcampapp"
  availability_zone         = "us-east-1a"
  blueprint_id              = "wordpress"
  bundle_id                 = "nano_1_0"
  key_import_name           = "wordpresskey"
  disk_name                 = "wordpress-disk"
  disk_path                 = "/dev/xvdf"
  size_in_gb                = 10
  lb_name                   = "test-lb"
  target_type               = "CNAME"
  target                    = "63837548911110b95add6b181f473824-48297754.us-east-1.elb.amazonaws.com"
  health_check_path         = "/"
  instance_port             = 80
  public_key                = file("~/.ssh/id_rsa.pub")
  domain_entry_name         = "www.techstarterepublic.com"
  certificate_name          = "test"
  domain_name               = "techstarterepublic.com"
  subject_alternative_names = ["www.techstarterepublic.com"]
}
