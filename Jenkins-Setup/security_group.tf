resource "aws_security_group" "Jenkins_SG" {
  name        = "Jenkins_SG"
  description = "Security group for Jenkins"
  vpc_id      = var.vpc_id

  tags = {
    Name = "Jenkins_SG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Jenkins_SG_SSH_Ingress" {
  security_group_id = aws_security_group.Jenkins_SG.id
  cidr_ipv4   = var.cidr_ipv4
  from_port   = var.ssh_port
  ip_protocol = "tcp"
  to_port     = var.ssh_port
}
resource "aws_vpc_security_group_ingress_rule" "Jenkins_SG_HTTP_Ingress" {
  security_group_id = aws_security_group.Jenkins_SG.id
  cidr_ipv4   = var.cidr_ipv4
  from_port   = var.HTTP_port
  ip_protocol = "tcp"
  to_port     = var.HTTP_port
}
resource "aws_vpc_security_group_ingress_rule" "Jenkins_SG_HTTPS_Ingress" {
  security_group_id = aws_security_group.Jenkins_SG.id
  cidr_ipv4   = var.cidr_ipv4
  from_port   = var.HTTPS_port
  ip_protocol = "tcp"
  to_port     = var.HTTPS_port
}

resource "aws_vpc_security_group_ingress_rule" "Jenkins_SG_Jenkins_Ingress" {
  security_group_id = aws_security_group.Jenkins_SG.id
  cidr_ipv4   = var.cidr_ipv4
  from_port   = var.Jenkins_port
  ip_protocol = "tcp"
  to_port     = var.Jenkins_port
}

resource "aws_vpc_security_group_egress_rule" "Jenkins_SG_Outbound" {
  security_group_id = aws_security_group.Jenkins_SG.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = "-1" # semantically equivalent to all ports
}
