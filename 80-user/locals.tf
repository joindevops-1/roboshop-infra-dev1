locals {
  components = {
      catalogue = {
        component        = "user"
        rule_priority    = 10
        alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
      }
      user = {
        component        = "user"
        rule_priority    = 20
        alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
      }
      cart = {
        component        = "cart"
        rule_priority    = 30
        alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
      }
      shipping = {
        component        = "shipping"
        rule_priority    = 40
        alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
      }
      payment = {
        component        = "payment"
        rule_priority    = 50
        alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
      }
      frontend = {
        component        = "frontend"
        rule_priority    = 70
        alb_listener_arn = data.aws_ssm_parameter.frontend_alb_listener_arn.value
      }
  }
}
