resource "aws_lb" "external_alb1" {
name                      = "external-alb1"
internal                  = false
load_balancer_type        = "application"
security_groups           = [aws_security_group.my-sg.id]
subnets                   = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]

enable_deletion_protection = false
}
resource "aws_alb_target_group" "target_alb1" {
name              = "target-alb1"
port              = 80
protocol          = "HTTP"
vpc_id            = aws_vpc.my-vpc1.id
}

