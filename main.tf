resource "aws_route53_zone" "primary" {
  name = "testdomain.com"
}

resource "aws_route53_record" "ns" {
    count = var.parent_zone_ids.internal !=null ? 1:0
    zone_id = var.parent_zone_ids.internal
    name = "testdomain.com"
    type = "NS"
    records = aws_route53_zone.primary.name_servers
}