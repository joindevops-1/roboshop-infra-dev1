module "components" {
  for_each = local.components
  source           = "../../terraform-roboshop-backend"
  component        = each.key
  rule_priority    = each.value.rule_priority
  alb_listener_arn = each.value.alb_listener_arn
  
}