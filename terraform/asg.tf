

resource "aws_lb" "alexis_alb" {
  name = "eng84-k8s-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.alexis_sg_public.id]
  subnets = [
              aws_subnet.alexis_subnetA.id,
              aws_subnet.alexis_subnetB.id,
              aws_subnet.alexis_subnetC.id,
             ]
  tags = {
    Name = "eng84_terraform_k8s_ALB"
  }
}



resource "aws_lb_target_group" "alexis_lb_target_group" {
  name = "eng84-k8s-lb-tg"
  port = 80
  protocol = "HTTP"
  target_type = "instance"
  vpc_id = aws_vpc.alexis_vpc.id
}

resource "aws_lb_listener" "alexis_lb_listener" {
  load_balancer_arn = aws_lb.alexis_alb.arn
  port = "80"
  protocol = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.alexis_lb_target_group.arn
  }
}
# resource "aws_lb_target_group_attachment" "alexis_lb_tg_attachment" {
#   target_group_arn = aws_lb_target_group.alexis_lb_target_group.arn
#   target_id        = aws_instance.master_node.id
#   port             = 80
# }





