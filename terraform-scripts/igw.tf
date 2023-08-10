#create internet gateway
resource "aws_internet_gateway" "tfigw" {
vpc_id = "${aws_vpc.my-vpc1.id}"
}
