# Internet gateway for the public subnet
resource "aws_internet_gateway" "wordpressIG" {
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  //tags {
  //  Name = "ecsWordpressIG"
  //}
}