# Amazon Linux 2 AMI: ami-04db49c0fb2215364

variable "amis" {
    
    default = "ami-04db49c0fb2215364"
  
}


variable "instance_type" {

    default = "t2.micro"
  
}

variable "instance_type_internal" {

    default = "t2.micro"
  
}

variable "output_web_sg" {} 
variable "external_alb_sg" {} 
variable "output_bastion_ssh" {}   
variable "output_internal_alb_sg" {}

