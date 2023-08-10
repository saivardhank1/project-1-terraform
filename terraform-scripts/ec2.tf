# creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  key_name = "manasa"
  vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data = "${file("file.sh")}"
  tags = {
   Name = "My Public Instance"
}
}
# creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = "t2.micro"
  key_name = "manasa"
  vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]
  subnet_id = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true
  user_data = "${file("file.sh")}"
  tags = {
    Name = "My Public Instance 1"
}
}
