resource "aws_launch_template" "launch_template" {
  name = var.name

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 20
    }
  }

  ebs_optimized = true

  image_id = var.image_id

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = var.instance_type

  key_name = var.key_name

  monitoring {
    enabled = false
  }

  network_interfaces {
    associate_public_ip_address = false
  }

  vpc_security_group_ids = var.vpc_security_group_ids

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = var.name_tag
    }
  }

  user_data = filebase64(var.userdata_path)
}
