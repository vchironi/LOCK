
resource "aws_instance" "ec2_example" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    tags = {
        Name = "MyEC2Instance_1_"
    }
  
}