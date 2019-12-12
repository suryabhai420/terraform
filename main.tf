provider "aws" {}
module "ec2" {
  source = "./modules/ec2"
  ami = "ami-0520e698dd500b1d1"
  instance_type = "t2.micro"
  Name = "suresh"
  aws_iam_name = "loadbalancer"
  awsiam_path = "system"
  awsiamaccesskey = "aws2_iam_user.lb.name"
  acesspolicy = "aws_iam_user.lb.name"
}
