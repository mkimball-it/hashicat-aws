//--------------------------------------------------------------------
// Variables
variable "vpc_database_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_elasticache_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_enable_classiclink" {}
variable "vpc_enable_classiclink_dns_support" {}
variable "vpc_flow_log_cloudwatch_log_group_kms_key_id" {}
variable "vpc_flow_log_cloudwatch_log_group_retention_in_days" {}
variable "vpc_flow_log_log_format" {}
variable "vpc_intra_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_private_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_public_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_redshift_subnet_assign_ipv6_address_on_creation" {}
variable "vpc_vpn_gateway_az" {}

//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/MKimball-training/vpc/aws"
  version = "2.39.0"

  database_subnet_assign_ipv6_address_on_creation = "${var.vpc_database_subnet_assign_ipv6_address_on_creation}"
  elasticache_subnet_assign_ipv6_address_on_creation = "${var.vpc_elasticache_subnet_assign_ipv6_address_on_creation}"
  enable_classiclink = "${var.vpc_enable_classiclink}"
  enable_classiclink_dns_support = "${var.vpc_enable_classiclink_dns_support}"
  flow_log_cloudwatch_log_group_kms_key_id = "${var.vpc_flow_log_cloudwatch_log_group_kms_key_id}"
  flow_log_cloudwatch_log_group_retention_in_days = "${var.vpc_flow_log_cloudwatch_log_group_retention_in_days}"
  flow_log_log_format = "${var.vpc_flow_log_log_format}"
  intra_subnet_assign_ipv6_address_on_creation = "${var.vpc_intra_subnet_assign_ipv6_address_on_creation}"
  private_subnet_assign_ipv6_address_on_creation = "${var.vpc_private_subnet_assign_ipv6_address_on_creation}"
  public_subnet_assign_ipv6_address_on_creation = "${var.vpc_public_subnet_assign_ipv6_address_on_creation}"
  redshift_subnet_assign_ipv6_address_on_creation = "${var.vpc_redshift_subnet_assign_ipv6_address_on_creation}"
  vpn_gateway_az = "${var.vpc_vpn_gateway_az}"
}