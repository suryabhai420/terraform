provider "aws" {}
module "ec2" {
  source = "./modules/ec2"
  ami = "ami-087c2c50437d0b80d"
  instance_type = "t2.micro"
  Name = "suresh"
  aws_iam_name = "loadbalancer"
  awsiam_path = "system"
  awsiamaccesskey = "aws2_iam_user.lb.name"
  acesspolicy = "aws_iam_user.lb.name"
}
