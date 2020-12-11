# Define a vpc
resource "aws_vpc" "wordpressVPC" {
  cidr_block = "200.0.0.0/16"
  //tags {
  //  Name = "ecsWordpressVPC"
  //}
  
}