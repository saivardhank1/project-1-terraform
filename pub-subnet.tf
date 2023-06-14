#creating 1st web subnet
resource "aws_subnet" "public-subnet-1" {
 vpc_id = aws_vpc.my-vpc1.id
 cidr_block ="10.0.0.0/19"
 map_public_ip_on_launch =true
 availability_zone = "ap-south-1a"
tags = {
  Name = "web subnet 1"
}
}
#creating 2nd web subnet
resource "aws_subnet" "public-subnet-2" {
 vpc_id = aws_vpc.my-vpc1.id
 cidr_block ="10.0.32.0/19"
 map_public_ip_on_launch =true
 availability_zone = "ap-south-1b"
tags = {
  Name = "web subnet 2"
}
}

