resource "aws_route53_zone" "primary" {
  name = "testdomain.com"
}

resource "aws_route53_record" "dev_record" {
    zone_id = aws_route53_zone.primary.zone_id
    name = "dev"
    type = "A"

    alias {
        name = "testdomain.com"
        zone_id = aws_route53_zone.primary.zone_id
        evaluate_target_health = true
    }
}