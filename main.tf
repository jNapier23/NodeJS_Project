# Create instance for CI server, open ports for HTTP, MySQL, Jenkins, SSH (from main instance)
# Create VPC with 3 public subnets each with 400+ IPs
# Deployment instance with public HTTP access and MySQL

provider "aws" {
    access_key      = var.access_key
    secret_key      = var.secret_key
    region          = "eu-west-2"
}

resource "aws_instance" "ci_server" {
    ami             = "ami-0aaa5410833273cfe"    
    instance_type   = "t2.small"
}

resource "aws_instance" "deployment" {
    ami             = "ami-0aaa5410833273cfe"
    instance_type   = "t2.small"
}

resource "aws_security_group" "ci_security" {

}
