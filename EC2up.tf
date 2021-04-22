resource "aws_instance" "ubuntu-1-inst" {
  ami = "ami-08962a4068733a2b6"
  instance_type = "t2.micro"

  subnet_id = aws.homework7vpc.id

  vpc_security_group_ids = [ aws_security_group.allowed_ports.id ]

  tags = {
    "Name" = "ubuntu-1-inst"
  }
}