
resource "aws_instance" "web" {
  ami           =  "${var.ami}"
  instance_type =  "${var.instance_type}"

  tags = {
    Name =  "${var.Name}"
  }
}

resource "aws_iam_user" "lb" {
  name = "${var.awsiamn_ame}"
  path = "${var.awsiam_path}"

  tags = {
    tag-key = "tag-value"
  }
}


resource "aws_iam_access_key" "lb" {
  user = "${var.awsiamaccesskey}"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "test"
  user = "${var.acesspolicy}"

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
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-4b748820" 
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  
  }
}
