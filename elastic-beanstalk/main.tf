resource "aws_elastic_beanstalk_application" "src" {
  name        = var.application_name
  description = var.description
  tags = var.tags
}

resource "aws_elastic_beanstalk_environment" "src" {
  name                = var.environment_name
  application         = aws_elastic_beanstalk_application.src.name
  solution_stack_name = var.solution_stack_name
  tier                = var.tier

  tags = var.tags

  dynamic "setting" {
    for_each = var.settings
    content {
      namespace = setting.value["namespace"]
      name = setting.value["name"]
      value = setting.value["value"]
      resource = setting.value["resource"]
    }
  }
}

### https://stackoverflow.com/questions/65819004/elasticbeanstalk-create-default-listener-rule-with-https443-instead-of-http80
### https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/terraform-0.12-examples/advanced-dynamic-blocks

# Elastic Beanstalk environment forces update on each apply is solved by adding resource=""
# https://github.com/hashicorp/terraform-provider-aws/issues/1471
