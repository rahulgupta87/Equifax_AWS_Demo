resource "aws_security_group" "rds_master_sg" {
  name = "${var.db_name} - rds sg"
  vpc_id = "${aws_vpc.wordpressVPC.id}"
  ingress {
      from_port = "${var.ingress_from_port}"
      to_port = "${var.ingress_to_port}"
      protocol = "${var.ingress_to_protocol}"
      cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
      from_port = 1024
      to_port = 65535
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "rds_master_grp" {
  name = "rds_master_subnet_grp"
  subnet_ids = ["subnet-022fd2acd08b118d0","subnet-061d28ea486471ba7"]
}

resource "aws_db_instance" "rds_master" {
  allocated_storage = "${var.allocated_storage}"
  engine = "${var.engine}"
  engine_version = "${var.engine_version}"
  instance_class = "${var.instance_class}"
  name = "${var.db_name}"
  username = "${var.db_username}"
  password = "${var.db_password}"
  skip_final_snapshot = true
  //security_group_names = ["aws_security_group.rds_master_sg"]
  depends_on = ["aws_security_group.rds_master_sg"]
}
