# Amazon Linux AMI: ami-04db49c0fb2215364
resource "aws_launch_configuration" "web-lc" {

    name                       = "Web_Launch_Config"
    image_id                   = var.amis
    instance_type              = var.instance_type
    security_groups            = [
                                 var.external_alb_sg,
                                 var.output_bastion_ssh,
                                 var.output_web_sg
                                  ]

    associate_public_ip_address = true
    user_data                  = file("./config/userdata.sh")
    # key_name                   = "myec2key"
  
}

output "web_lc_name" {
  value = aws_launch_configuration.web-lc.name
}


