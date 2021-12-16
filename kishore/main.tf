# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm1" {
  ami           = data.aws_ami.amzlinux.id 
  instance_type = var.instance_type  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
}







