//variable "subnet_ids" {}
//variable "identifier" {}
variable "allocated_storage" { default = 5 }
variable "engine" { default = "postgres" }
variable "engine_version" { default = "9.5.2" }
variable "instance_class" { default = "db.t2.micro" }
variable "db_name" {default = "testdb"}
variable "db_username" {default = "testdb"}
variable "db_password" {default = "testdb2020"}
variable "parameter_group_name" { default = "default.mysql5.7" }
//variable "vpc_id" {}
variable "ingress_from_port" {default = 5432}
variable "ingress_to_port" {default = 5432}
variable "ingress_to_protocol" {default = "tcp"}
//variable "ingress_cidr_blocks" {}
