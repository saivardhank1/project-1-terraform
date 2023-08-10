#creating 1st web subnet
resource "aws_subnet" "private-subnet-1" {
 vpc_id = aws_vpc.my-vpc1.id
 cidr_block ="10.0.64.0/19"
 map_public_ip_on_launch =false
 availability_zone = "ap-south-1b"
tags = {
  Name = "web subnet 1"
}
}
#creating 2nd web subnet
resource "aws_subnet" "private-subnet-2" {
 vpc_id = aws_vpc.my-vpc1.id
 cidr_block ="10.0.96.0/20"
 map_public_ip_on_launch =false
 availability_zone = "ap-south-1b"
tags = {
  Name = "web subnet 2"
}
}

