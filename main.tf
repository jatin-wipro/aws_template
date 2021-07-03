provider "aws" {
  region = "${var.region}"
  access_key = "AKIAVBR3OMXTMFR7XS72"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "${var.tag}"
  }
}
