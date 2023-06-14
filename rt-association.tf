resource "aws_route_table_association" "route1" {
 subnet_id        = aws_subnet.public-subnet-1.id
 route_table_id   = aws_route_table.route.id
}
resource "aws_route_table_association" "route2" {
  subnet_id       = aws_subnet.public-subnet-2.id
  route_table_id  = aws_route_table.route.id
}

