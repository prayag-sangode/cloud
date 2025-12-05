data "aws_ami" "amazon_linux_3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["137112412989"] # Amazon official account
}
# ami = data.aws_ami.amazon_linux_3.id
