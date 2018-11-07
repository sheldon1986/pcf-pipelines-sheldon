resource "aws_db_subnet_group" "rds_subnet_group" {
    name = "${var.prefix}-rds_subnet_group"
    subnet_ids = ["${aws_subnet.PcfVpcRdsSubnet_az1.id}", "${aws_subnet.PcfVpcRdsSubnet_az2.id}"]
    tags {
        Name = "${var.prefix} RDS DB subnet group"
    }
}
