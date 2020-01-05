resource "aws_instance" "jenkins" {
  ami          = var.AMIS
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.jenkins.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  # the user data to install jenkins server
  user_data = "#!/bin/bash\nyum update -y\nyum -y install java*\nyum -y install wget\nwget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo\nrpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key\nyum -y install jenkins\nsystemctl start jenkins\nsystemctl enable jenkins"

}
output "ip" {

value = aws_instance.jenkins.public_ip
}
