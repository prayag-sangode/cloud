data "aws_ami" "amazon_linux_3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amazon-linux-2023-*-hvm-*-x86_64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Amazon official account for Amazon Linux
}
# ami = data.aws_ami.amazon_linux_3.id
