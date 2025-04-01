module "mysql_sg" {
    source = "../terraform-aws-security-group"
    Project_name = "expense"
    environment = "development"
    common_tags = var.common_tags
    sg_name = "mysql"
    sg_tags = var.mysql_sg_tags
    vpc_id = module.vpc.vpc_id
}