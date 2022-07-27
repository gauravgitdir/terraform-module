resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.instance_count
  identifier         = "${var.db_cluster_instance_name}-${count.index}"
  cluster_identifier = aws_rds_cluster.default.id
  instance_class     = "db.r4.large"
  engine             = var.db_engine
  engine_version     = aws_rds_cluster.default.engine_version
}

resource "aws_rds_cluster" "default" {
  cluster_identifier = "${var.db_cluster_instance_name}-cluster"
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
  database_name      = var.db_name
  master_username    = var.db_admin_username
  master_password    = var.db_admin_password
}
