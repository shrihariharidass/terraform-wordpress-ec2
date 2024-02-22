resource "aws_iam_role" "wordpress" {
  name = "WordPressRole"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "wordpress_policy" {
  role       = aws_iam_role.wordpress.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
