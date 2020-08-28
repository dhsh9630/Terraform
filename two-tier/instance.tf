resource "aws_instance" "bastion" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.net-public[0].id
  vpc_security_group_ids = [
    aws_security_group.sg-ssh-pub.id
  ]
  key_name = aws_key_pair.mykeypair.key_name
}

resource "aws_instance" "private-inst" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.net-private[0].id
  vpc_security_group_ids = [
    aws_security_group.sg-ssh-priv.id
  ]
  key_name = aws_key_pair.mykeypair.key_name
}
