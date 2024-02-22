resource "aws_instance" "wordpress" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id              = aws_subnet.public.id

  iam_instance_profile = "WordPressRole"

  user_data = file("userdata.sh")

  associate_public_ip_address = true

  tags = {
    Name = "WordPress Instance"
  }
}