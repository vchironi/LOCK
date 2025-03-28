
resource "aws_instance" "ec2_example" {
    ami           = "ami-00101c3551c99b710" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    subnet_id = "subnet-04654876f3e187c4a" 
    tags = {
        Name = "MyEC2Instance_1_"
    }
  
}