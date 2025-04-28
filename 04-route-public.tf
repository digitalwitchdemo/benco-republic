# create a public route table
#=======================
data "aws_route_tables" "rts" {
  vpc_id = aws_vpc.benco-vpc.id
}

# Create a route 
#=======================
resource "aws_route" "public-route" {
  route_table_id         = data.aws_route_tables.rts.ids[0]
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gw.id
}



