provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5DZFUECZELZTFLVT"
  secret_key = "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"

}

/*
resource "aws_db_instance" "testdb" {
  allocated_storage    = 20
  db_name              = "testdb"
  engine               = "postgres"
  engine_version       = "13"
  instance_class       = "db.t2.micro"
  username             = "nicaise"
  password             = "nicaise"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
*/

resource "aws_db_instance" "default" {
  allocated_storage   = 40
  engine              = "postgres"
  identifier          = "testdb"
  engine_version      = "13"
  instance_class      = "db.t3.medium"
  name                = "ntweeklydb001"
  username            = "nicaise"
  password            = "nicaise24"
  skip_final_snapshot = true
  publicly_accessible = true

}

