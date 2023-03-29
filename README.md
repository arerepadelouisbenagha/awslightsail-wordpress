This module sets up an AWS provider and creates the following resources

- Lightsail instance with the same configuration as before.
- Lightsail load balancer that listens on port `80` and forwards traffic to the ---- Lightsail instance.
- Lightsail SSL certificate for the domain `example.com`.
- Lightsail static IP address to attach to the load balancer.
- Lightsail domain for the domain `example.com`.
- Lightsail domain entry that maps the `example.com` domain to the load balancer 
  and SSL certificate.
Run `terraform init` to initialize your Terraform configuration.

Run `terraform apply` to create your Lightsail instance and associated resources.

- Once the apply has completed, you can check the AWS Lightsail console to confirm 
  that your instance, load balancer, SSL certificate, static IP, and DNS have been 
  created.

**Warning:** Certificate validate has to be done manually on the Route in AWS.
             Automatic DNS validation doesn't work aat this time. Terraform       
             behaviour.
## Author

Module is maintained by [Louis Benagha](https://github.com/arerepadelouisbenagha/wordpress.git)