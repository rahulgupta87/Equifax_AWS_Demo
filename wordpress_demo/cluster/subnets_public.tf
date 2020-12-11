# Public subnet 1 
resource "aws_subnet" "wordpressPubSN1" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.0.0/24"
  availability_zone = "us-east-2a"
  //tags {
  //  Name = "ecsWordpressPubSN1"
  //}
}

# Public subnet 2
resource "aws_subnet" "wordpressPubSN2" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.16.0/24"
  availability_zone = "us-east-2b"
  //tags {
  //  Name = "ecsWordpressPubSN2"
  //}
}

# Routing table for public subnet 1
resource "aws_route_table" "wordpressPubSN1-RT" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.wordpressIG.id}"
  }
  //tags {
  //  Name = "wordpressPubSN1-RT"
  //}
}

# Routing table for public subnet 2
resource "aws_route_table" "wordpressPubSN2-RT" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.wordpressIG.id}"
  }
  //tags {
  //  Name = "wordpressPubSN2-RT"
  //}
}

# Associate the routing table to public subnet 1
resource "aws_route_table_association" "wordpressPubSN1-RTAssn" {
  subnet_id = "${aws_subnet.wordpressPubSN1.id}"
  route_table_id = "${aws_route_table.wordpressPubSN1-RT.id}"
}

# Associate the routing table to public subnet 2
resource "aws_route_table_association" "wordpressPubSN2-RTAssn" {
  subnet_id = "${aws_subnet.wordpressPubSN2.id}"
  route_table_id = "${aws_route_table.wordpressPubSN2-RT.id}"
}