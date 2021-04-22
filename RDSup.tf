resource "aws_db_instance" "MyDB" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.20"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "Rdm45099-"
  parameter_group_name = "default.mysql8.0.20"
  skip_final_snapshot  = true
}