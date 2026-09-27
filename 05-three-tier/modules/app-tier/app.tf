resource "aws_instance" "app" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.app_sg_id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              # app runtime install goes here (node, python, etc.)
              EOF

  tags = {
    Name = "${var.project_name}-app"
  }
}