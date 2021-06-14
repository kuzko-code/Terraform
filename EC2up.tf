resource "aws_instance" "ubuntu-1" {
  ami = "ami-05f7491af5eef733a"
  instance_type = "t2.micro"

  //subnet_id = aws.homework7vpc.id

  //vpc_security_group_ids = [ aws_security_group.allowed_ports.id ]

  key_name = "${var.aws-key-name}"
  associate_public_ip_address = "true"
  tags = {
    "Name" = "ubuntu-1"
  }
}