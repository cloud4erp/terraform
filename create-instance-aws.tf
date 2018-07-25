provider "aws" {
  access_key = "AKIAJJFRGJLJM5STDLWQ"
  secret_key = "jAVKPURJtSlkHLfDxuCHEq7+KCM1lqydcXB8aVYb"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2d360152"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04bb594d08564838e"
  key_name      = "cloud4erp"
  security_groups = ["sg-0e7b0a2ec7264c2e5"]

  tags {
     Name = "${var.name}"
  }

}
