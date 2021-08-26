resource "aws_db_instance" "rds_concord" {

    allocated_storage               = 30
    storage_type                    = "gp2"
    engine                          = "mysql"
    engine_version                  = "8.0.20"
    instance_class                  = "db.t2.micro"
    name                            = "rds_concord"
    username                        = "admin"
    password                        = "Passw0rd123"
    multi_az                        = true
    port                            = 3306
    db_subnet_group_name            = var.out_rdssubnetgroup
    vpc_security_group_ids          = [var.rdsmysqlsg]
    skip_final_snapshot             = true
    tags                            = {
            name                    = "RDS MySQL"
    }

  
}
