

resource "aws_instance" "demo1" {
  ami           = var.ami-type
  instance_type = var.instace_type
  vpc_security_group_ids = [data.aws_security_group.sg1.id]
  key_name      = "efskey"
  user_data     = file("${path.module}/postgresql.sh")
  tags = {
    "Name" = "postgresql-server"
    "env"  = var.env
    "Team" = var.team
  }
}


