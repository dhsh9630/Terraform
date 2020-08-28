resource "aws_autoscaling_group" "wp-asg" {
  name                      = "wp-asg"
  vpc_zone_identifier       = [
    aws_subnet.net-public[0].id,
    aws_subnet.net-public[1].id,
    aws_subnet.net-public[2].id
  ]
  min_size                  = 1
  max_size                  = 3
  health_check_grace_period = 300
  health_check_type         = "EC2"
  force_delete              = true

  launch_template {
    id      = aws_launch_template.wp-template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "ec2 instance"
    propagate_at_launch = true
  }
}

