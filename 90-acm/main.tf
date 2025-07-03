resource "aws_acm_certificate" "daws84s" {
  domain_name       = "*.daws84s.site"
  validation_method = "DNS"

  tags = merge(
    local.common_tags,
    {
        Name = local.final_name
    }
  )

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "daws84s" {
  for_each = {
    for dvo in aws_acm_certificate.daws84s.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 1
  type            = each.value.type
  zone_id         = data.aws_route53_zone.daws84s.zone_id
}

resource "aws_acm_certificate_validation" "daws84s" {
  certificate_arn         = aws_acm_certificate.daws84s.arn
  validation_record_fqdns = [for record in aws_route53_record.daws84s : record.fqdn]
}