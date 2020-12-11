output "subnet_group" {
  value = "${aws_db_subnet_group.rds_master_grp.name}"
}
output "db_instance_id" {
  value = "${aws_db_instance.rds_master.id}"
}
output "db_instance_address" {
  value = "${aws_db_instance.rds_master.address}"
}
output "db_security_group" {
  value = "${aws_security_group.rds_master_sg.id}"
}
