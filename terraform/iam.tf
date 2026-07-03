resource "aws_iam_role" "ec2_role" {

  name = "cloudproject-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

}




resource "aws_s3_bucket" "project_bucket" {
  bucket = "${var.project_name}-${var.environment}-storage-${random_id.bucket_suffix.hex}"

  tags = {
    Name        = "${var.project_name}-storage"
    Environment = var.environment
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}



resource "aws_iam_policy" "s3_access_policy" {
  name        = "cloudproject-s3-access-policy"
  description = "Allows EC2 instance to access the project S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:ListBucket"
        ]

        Resource = aws_s3_bucket.project_bucket.arn
      },
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]

        Resource = "${aws_s3_bucket.project_bucket.arn}/*"
      }
    ]
  })
}


resource "aws_iam_role_policy_attachment" "ec2_s3_policy_attachment" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}



resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "cloudproject-ec2-instance-profile"
  role = aws_iam_role.ec2_role.name
}