# Private AppSubnet 1 
resource "aws_subnet" "wordpressAppSN1" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.1.0/24"
  availability_zone = "us-east-2a"
  //tags {
  //  Name = "ecsWordpressAppSN1"
  //}
}

# Private AppSubnet 2
resource "aws_subnet" "wordpressAppSN2" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.17.0/24"
  availability_zone = "us-east-2b"
  //tags {
  //  Name = "ecsWordpressAppSN2"
  //}
}

# Private DataSubnet 1 
resource "aws_subnet" "wordpressDataSN1" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.2.0/24"
  availability_zone = "us-east-2a"
  //tags {
  //  Name = "ecsWordpressDataSN1"
  //}
}

# Private AppSubnet 2
resource "aws_subnet" "wordpressDataSN2" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  cidr_block = "200.0.18.0/24"
  availability_zone = "us-east-2b"
  //tags {
  //  Name = "ecsWordpressDataSN2"
  //}
}