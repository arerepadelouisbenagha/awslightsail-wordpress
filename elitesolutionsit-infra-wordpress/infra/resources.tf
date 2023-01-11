module "lightsail" {
  source = "../modules/worldpress"

  light_sail_name   = "bootcampapp"
  availability_zone = "us-east-1a"
  blueprint_id      = "wordpress"
  bundle_id         = "nano_1_0"
  key_import_name   = "wordpresskey"

  #LB
  lb_name           = "test-lb"
  health_check_path = "/"
  instance_port     = "80"
  public_key        = file("~/.ssh/id_rsa.pub")

  #Cert
  certificate_name          = "test"
  domain_name               = "elitesolutionsit.com"
  subject_alternative_names = ["www.elitesolutionsit.com"]
}
