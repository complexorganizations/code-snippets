// Create a VPN gateway
resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "code-snippets-vpn-gateway-0-us-east-1"
  }
}
