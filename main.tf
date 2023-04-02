terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}


# Configuration options
provider "aws" {
  region = "ap-south-1"
}

# resource "aws_instance" "S1" {
#   ami             = var.ami_id
#   instance_type   = var.instance_type
#   key_name        = aws_key_pair.test-key.key_name
#   security_groups = [aws_security_group.SG.name]
#   #   subnet_id      = var.subnet_id 
#   tags = {
#     Name = var.tag
#   }
# }

// Module use for Auto Scalling Group

module "Autoscaling" {
  source                    = "./modules/Auto_Scaling_Group"
  AG_name                   = var.AG_name
  policy_name               = var.policy_name
  ami_id                    = var.ami_id
  instance_type             = var.instance_type
  key                       = file("${path.module}/key-tf.pub")
  key_name                  = var.key_name
  ports                     = var.ports
  SG_tag                    = var.SG_tag
  SG_name                   = var.SG_name
  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = var.health_check_type
  cooldown                  = var.cooldown

}