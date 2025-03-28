resource "aws_vpc" "private_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-private-vpc"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.private_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "my-private-subnet"
  }
}
resource "aws_instance" "ec2_example" {
  ami           = "ami-0013f152ff066ceb8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id

  tags = {
    Name = "MyEC2Instance_3_"
  }
}