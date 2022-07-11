
# EC2 Instances
resource "aws_instance" "master_node" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t3.small"
  private_ip = "26.1.1.11"
  subnet_id = aws_subnet.alexis_subnetA.id

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.alexis_sg_public.id
  ]
  tags = {
    Name = var.aws_instance_master
  }

  #
  provisioner "remote-exec" {
    script = "../provisioning/k3s-master.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
  provisioner "file" {
    source = "../kubernetes/deployments/flaskapp-deployment.yaml"
    destination = "/home/ubuntu/flaskapp-deployment.yaml"
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
      "sudo mv /home/ubuntu/flaskapp-deployment.yaml /var/lib/rancher/k3s/server/manifests/",
      "sudo cp /var/lib/rancher/k3s/server/node-token /home/ubuntu/"
    ]
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
#   provisioner "local-exec" {
#     command = "scp -i ~/docs/imp/wrk/sparta_global/aws/eng84devops.pem -o StrictHostKeyChecking=no ubuntu@${self.public_ip}:/home/ubuntu/node-token ./"
#   }

  depends_on = [aws_lb.alexis_alb]
}


resource "aws_instance" "workerA" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t3.small"
  private_ip = "26.1.1.20"
  subnet_id = aws_subnet.alexis_subnetA.id

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.alexis_sg_public.id
  ]
  tags = {
    Name = var.aws_instance_workerA
  }
  provisioner "file" {
    source = "../provisioning/k3s-worker.sh"
    destination = "/home/ubuntu/provision.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }

  # provisioner "file" {
  #   source = "./node-token"
  #   destination = "/tmp/"
  #   connection {
  #     type = "ssh"
  #     user = "ubuntu"
  #     agent = true
  #     host = self.public_ip
  #     private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
  #   }
  # }
  # provisioner "remote-exec" {
  #   script = "../provisioning/k3s-worker.sh"
  #   connection {
  #     type = "ssh"
  #     user = "ubuntu"
  #     agent = true
  #     host = self.public_ip
  #     private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
  #   }
  # }
  depends_on = [aws_instance.master_node]
}
resource "aws_instance" "workerB" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t2.micro"
  private_ip = "26.1.2.20"
  subnet_id = aws_subnet.alexis_subnetB.id

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.alexis_sg_public.id
  ]
  tags = {
    Name = var.aws_instance_workerB
  }
  provisioner "file" {
    source = "../provisioning/k3s-worker.sh"
    destination = "/home/ubuntu/provision.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
}
 
resource "aws_instance" "workerC" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t2.micro"
  private_ip = "26.1.3.20"
  subnet_id = aws_subnet.alexis_subnetC.id

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    aws_security_group.alexis_sg_public.id
  ]
  tags = {
    Name = var.aws_instance_workerB
  }
  provisioner "file" {
    source = "../provisioning/k3s-worker.sh"
    destination = "/home/ubuntu/provision.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
}
 

