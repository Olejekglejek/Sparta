
# EC2 Instances
resource "aws_instance" "master_node" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t3.small"
  private_ip = "12.1.1.11"
  subnet_id = aws_subnet.alexis_subnetA.id

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.alexis_sg_public.id
  ]
  tags = {
    Name = "eng84_flask_app"
  }

  provisioner "file" {
    source = "../kubernetes"
    destination = "/home/ubuntu/"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
  provisioner "remote-exec" {
    inline = [
        "echo export ALB_DNS=${aws_lb.alexis_alb.dns_name} | sudo tee -a /etc/profile"
    ]
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
  provisioner "remote-exec" {
    script = "../single_node.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
  depends_on = [aws_lb.alexis_alb]
}


