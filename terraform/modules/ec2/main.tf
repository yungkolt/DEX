resource "aws_instance" "main" {
  ami           = "ami-0f8e81a3da6e2510a"  # Ubuntu 22.04 LTS in us-west-1
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [var.sg_id]

  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y docker.io
              systemctl start docker
              systemctl enable docker
              EOF

  tags = {
    Name    = "${var.project}-server"
    Project = var.project
  }
}