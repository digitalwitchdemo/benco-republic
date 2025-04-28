# create a private route table
#==============================

resource "aws_route_table" "route-table-private" {
  vpc_id = aws_vpc.benco-vpc.id

  route {
    cidr_block = "192.168.20.0/24"
    gateway_id = aws_nat_gateway.nat-gateway.id
  }

  tags = {
    Name = "${var.client_name}-private-route-table"
  }
}


# associate the route table with the private subnet 1
resource "aws_route_table_association" "private-subnet-01-associate" {
  subnet_id      = aws_subnet.benco-private-subnet01.id
  route_table_id = aws_route_table.route-table-private.id
}

resource "aws_route_table_association" "private-subnet-02-associate" {
  subnet_id      = aws_subnet.benco-private-subnet02.id
  route_table_id = aws_route_table.route-table-private.id
}
