provider "aws" {
    access_key = "AKIA2KFKAH3SCBS7E5HB"
    secret_key = "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"
    region = "ap-southeast-1"
}
resource "aws_iam_user" "dev" {
  name = "dev"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "dev" {
  user = aws_iam_user.dev.nhuong
}

resource "aws_iam_user_policy" "dev_ro" {
  name = "test"
  user = aws_iam_user.dev.nhuong

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
