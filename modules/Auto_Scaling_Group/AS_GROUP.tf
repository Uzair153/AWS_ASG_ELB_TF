

# resource "aws_placement_group" "PG" {
#   name     = "Placement_group_1"
#   strategy = "cluster"
# }

# Autoscaling Group

resource "aws_autoscaling_group" "ASG" {
  name                 = var.AG_name
  launch_configuration = aws_launch_configuration.LC.id
  # placement_group           = aws_placement_group.PG.id
  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = var.health_check_type
  force_delete              = true
  vpc_zone_identifier       = ["subnet-0c5fbfe64dba1fc0e"]
  # availability_zones = [ "value" ]

  tag {
    key                 = "Name"
    value               = "AS_Group_TF"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

