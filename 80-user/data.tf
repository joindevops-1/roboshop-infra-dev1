data "aws_ssm_parameter" "backend_alb_listener_arn" {
  name = "/${var.project}/${var.environment}/backend_alb_listener_arn"
}

data "aws_ssm_parameter" "frontend_alb_listener_arn" {
  name = "/${var.project}/${var.environment}/frontend_alb_listener_arn"
}