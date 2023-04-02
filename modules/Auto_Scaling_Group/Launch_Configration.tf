
// Launch Configration
resource "aws_launch_configuration" "LC" {
  image_id        = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.SG.id]
  key_name        = aws_key_pair.test-key.key_name
}
