provider "aws" {
  region = "${var.region}"
  access_key = "AKIAVBR3OMXTAZLFOZPQ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "${var.tag}"
  }
}
