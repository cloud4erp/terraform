provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2d360152"
  instance_type = "t2.micro"
  subnet_id     = "${var.subnet_id}"
  key_name      = "cloud4erp"
  security_groups = [""]

  tags {
     Name = "${var.name}"
  }

}
