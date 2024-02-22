resource "aws_instance" "wordpress" {
  ami = ami-0c7217cdde317cfec
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id = aws_subnet.public.id

  iam_instance_profile = aws_iam_role.wordpress.arn

  user_data = file("userdata.sh")

  tags = {
    Name = "WordPress Instance"
  }
}