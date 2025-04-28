# associate the public route table with the public subnet
#===================================================

resource "aws_route_table_association" "public-route-assocaite" {
  subnet_id      = aws_subnet.benco-public-subnet.id
  route_table_id = data.aws_route_tables.rts.ids[0]
}