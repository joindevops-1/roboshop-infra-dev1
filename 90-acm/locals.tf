locals {
  final_name = "${var.project}-${var.environment}-acm"
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = "true"
  }
}
