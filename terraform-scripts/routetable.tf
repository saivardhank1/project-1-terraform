resource "aws_route_table" "route" {
 vpc_id = aws_vpc.my-vpc1.id

 route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.tfigw.id
}
  tags = {
   name = "route to internet"
 }
}

