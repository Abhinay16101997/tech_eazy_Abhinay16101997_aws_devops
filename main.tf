# main.tf

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "${var.stage}-instance"
  }

  user_data = file("setup-${var.stage}.sh")
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-02521d90e7410d9f0" # Ubuntu 22.04 LTS (Mumbai region)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "stage" {
  description = "Deployment stage (e.g., Dev or Prod)"
  default     = "Dev"
}

