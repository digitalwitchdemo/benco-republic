resource "aws_instance" "web" {
    ami           = "ami-084568db4383264d4"
    instance_type = "t2.medium"
    subnet_id     = aws_subnet.benco-public-subnet.id
    key_name      = "benco-key01"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    associate_public_ip_address = true
    # user_data = file("user-data.sh")

    tags = {
        Name = "${var.client_name}-web-server"
    }

    connection {
    type     = "ssh"
    user     = "ubuntu"
    host     = self.public_ip
    private_key = file("${path.module}/benco-key01.pem")
  }

    provisioner "remote-exec" {
        inline = [
            "sudo apt-get update",
            "sudo apt install nginx -y",
            "sudo systemctl start nginx",
            "sudo systemctl enable nginx"
        ]
    }
}