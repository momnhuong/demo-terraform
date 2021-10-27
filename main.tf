provider "aws" {
    access_key = "AKIA2KFKAH3SCBS7E5HB"
    secret_key = "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"
    region = "ap-southeast-1"
}
resource "aws_iam_user" "user2" {
    name = "user2"
}
