variable "region" {
  description = "AWS region for hosting our your network"
  default = "ap-south-1"
}

variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default = "/home/ec2-user/raj_jen.pem"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default = "raj_jen"
}
variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
  ap-south-1 = "ami-0470e33cd681b2476"
  }
}
