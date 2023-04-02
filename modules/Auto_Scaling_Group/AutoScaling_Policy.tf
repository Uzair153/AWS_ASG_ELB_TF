// Auto scalling policy
resource "aws_autoscaling_policy" "policy_1" {
  name                   = var.policy_name
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.ASG.name
  policy_type            = "SimpleScaling"
}